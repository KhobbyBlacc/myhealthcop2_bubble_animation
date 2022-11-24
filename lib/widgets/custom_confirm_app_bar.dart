import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomConfirmationAppBar extends StatelessWidget {
  const CustomConfirmationAppBar({Key? key}) : super(key: key);

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
                    color: white,
                    size: 30,
                  ),
                ),
                Spacer(),

                Icon(Icons.close, 
                color: white,
                size: 30,)
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
