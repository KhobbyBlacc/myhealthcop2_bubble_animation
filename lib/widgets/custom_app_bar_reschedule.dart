import 'package:flutter/material.dart';
import 'package:myhealthcop2/constants/constants.dart';

class CustomRescheduleAppBar extends StatelessWidget {
  const CustomRescheduleAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 20 * 2,
      ),
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text("Reschedule", style: kBlac),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
