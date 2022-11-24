import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myhealthcop2/constants/constants.dart';
import 'package:myhealthcop2/widgets/custom_confirm_app_bar.dart';

class ConfirmationScreen extends StatelessWidget {
  ConfirmationScreen({required this.textTime, required this.textDay});

  DateTime textDay;
  String textTime;

  @override
  Widget build(BuildContext context) {
    var f = DateFormat('EEE, d MMM');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 600,
            child: Stack(children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/avatar.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // gradient: mid,
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(138, 17, 129, 241)
                              .withOpacity(0.3),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFEFDAF7)),
                                  child: const Text(
                                    "Class",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF8E44AD),
                                    ),
                                  )),
                              Spacer(),
                              const Icon(
                                Icons.more_vert,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Meditation",
                            style: kTitle,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          IntrinsicHeight(
                            child: Row(children: [
                              Text(
                                textTime,
                                style: kBlac,
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              Text(
                                f.format(textDay),
                                style: kBlac,
                              ),
                            ]),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "40 mins",
                            style: kReg,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/avatar.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Jane Cooper",
                                style: kReg,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.videocam_rounded,
                                size: 25,
                                color: Colors.pink[400],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "online",
                                style: kReg,
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Material(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                      width: 250,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 10),
                                      decoration: BoxDecoration(
                                          // color: Color.fromRGBO(243, 175, 45, 1),
                                          gradient: mid,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text('JOIN THE CLASS',
                                              style: kWhyte))),
                                ),
                              ),
                              Spacer(),
                              Material(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                      width: 50,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: Color(0xffCDF1FF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.chat_bubble_outline_rounded,
                                      )),
                                ),
                              ),
                            ],
                          )
                        ]),
                  )),
                  CustomConfirmationAppBar(),
            ]),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Overview",
                  style: kTitle,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                    "New to Fitness is program designed to get your activated on your fitness journey!",
                    style: kReg),
                SizedBox(height: 45),
                Row(
                  children: [
                    SizedBox(
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/avatar.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jane Cooper",
                          style: kReg,
                        ),
                        Text(
                          "Fitness Coach",
                          style: kGreyReg,
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
