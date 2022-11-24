import 'package:flutter/material.dart';
import 'package:myhealthcop2/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 20 * 2 ,
        right: 10,
      ),
      child: Container(
        height: size.height * 0.10,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
                Spacer(),
                Text("6/7", style: kGrey),
                Spacer(),
                Text(
                  "SKIP",
                  style: kGrey,
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 5,
                    width: 42,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 5,
                    width: 43,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 5,
                    width: 43,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 5,
                    width: 43,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 5,
                    width: 43,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 5,
                    width: 45,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 5,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
