import 'package:flutter/material.dart';
import 'package:myhealthcop2/constants/constants.dart';
import 'package:myhealthcop2/screens/reschedule.dart';
import 'package:myhealthcop2/widgets/custom_app_bar.dart';

import '../widgets/circles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "What are Your\nWellness Goals",
                style: kTitle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Spacer(),
            BubCircles(),
            const Spacer(),
            Center(
              child: Material(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => RescheduleScreen()));
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      decoration: BoxDecoration(
                          // color: Color.fromRGBO(243, 175, 45, 1),
                          gradient: mid,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text('NEXT', style: kWhyte))),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ]),
    );
  }
}
