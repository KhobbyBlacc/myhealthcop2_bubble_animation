import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myhealthcop2/constants/constants.dart';
import 'package:myhealthcop2/screens/confirmation_screen.dart';
import 'package:myhealthcop2/widgets/custom_app_bar_reschedule.dart';
import 'package:table_calendar/table_calendar.dart';

class RescheduleScreen extends StatefulWidget {
  const RescheduleScreen({Key? key}) : super(key: key);

  @override
  State<RescheduleScreen> createState() => _RescheduleScreenState();
}

class _RescheduleScreenState extends State<RescheduleScreen>
    with SingleTickerProviderStateMixin {
  //tab controller init
  late TabController _tabController;
  //for time selection
  String? isSelectedTime;
  String? text;
  //day select from calender
  var f = DateFormat('EEE, d MMM');
  DateTime today = (DateTime.now());
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRescheduleAppBar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Meditation",
                    style: kTitle,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                      "choose the most suitable day and time among the available ones",
                      style: kReg)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  children: [
                    Text(
                      f.format(today),
                      style: kBlac,
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                TableCalendar(
                  rowHeight: 40,
                  headerVisible: false,
                  calendarFormat: CalendarFormat.week,
                  headerStyle: HeaderStyle(
                    headerMargin: EdgeInsets.only(left: 5),
                    headerPadding:
                        EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                    titleTextStyle: kBlac,
                    formatButtonVisible: false,
                    titleCentered: false,
                    leftChevronIcon: const Icon(
                      Icons.chevron_left,
                      color: Colors.grey,
                      size: 30,
                    ),
                    rightChevronIcon: const Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  availableGestures: AvailableGestures.all,
                  firstDay: DateTime.utc(2022, 11, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: today,
                  onDaySelected: _onDaySelected,
                ),
                SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                    size: 40,
                  ),
                )
              ]),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Morning",
                    style: kBlac,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('09:00', "09:00 AM"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('09:30', "09:30 AM"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('10:00', "10:00 AM"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('10:30', "10:30 AM"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Noon",
                    style: kBlac,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('12:00', "12:00"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('13:00', "13:00"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('13:30', "13:30"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Evening",
                    style: kBlac,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('17:00', "17:00"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('18:30', "18:30"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('19:00', "19:00"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: buildRadioButton('19:30', "19:30"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Material(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ConfirmationScreen(
                                    textTime: isSelectedTime.toString(),
                                    textDay: today,
                                  )));
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        width: 400,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        decoration: BoxDecoration(
                            // color: Color.fromRGBO(243, 175, 45, 1),
                            gradient: mid,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text('CONFIRM', style: kWhyte))),
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  buildRadioButton(String text,String value) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            isSelectedTime = value;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            color: (isSelectedTime == value)
                ? Colors.black
                : Color.fromARGB(255, 44, 44, 44),
          ),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            backgroundColor: (isSelectedTime == value)
                ? Color(0xFFD4D9F5)
                : Color(0xFFF4F5FB)));
  }
}
