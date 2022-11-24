import 'package:bubble_chart/bubble_chart.dart';
import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class WrapBubble extends StatefulWidget {
  WrapBubble();

  @override
  State<WrapBubble> createState() => _WrapBubbleState();
}

class _WrapBubbleState extends State<WrapBubble> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    List _pickServices = [];

    return SizedBox(
      height: 500,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 1.0, end: 0.0),
        duration: const Duration(milliseconds: 2000),
        curve: Curves.bounceIn,
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(200 * value, 0.0),
            child: child,
          );
        },
        child: Stack(fit: StackFit.expand, children: [
          FloatingBubbles(
            noOfBubbles: 25,
            colorsOfBubbles: [primary],
            sizeFactor: 0.15,
            duration: 3,
          ),
          BubbleChartLayout(
            padding: 20,
            children: [
              BubbleNode.leaf(
                  value: 100000,
                  options: BubbleOptions(
                      color: Colors.blue.shade200,
                      child: ClipRRect(
                        child: buildImageCircle(
                            'assets/images/yoga3.jpg', 'HomeCare'),
                      ))),
              BubbleNode.leaf(
                value: 90000,
                options: BubbleOptions(
                    color: Colors.red.shade200,
                    child: buildImageCircle(
                        'assets/images/yoga2.jpg', 'Eat Healthy')),
              ),
              BubbleNode.leaf(
                  value: 75000,
                  options: BubbleOptions(
                      color: Colors.pink.shade100,
                      child: buildImageCircle(
                          'assets/images/yoga3.jpg', 'Reduce Stress'))),
              BubbleNode.leaf(
                  value: 67600,
                  options: BubbleOptions(
                      color: Colors.amber.shade200,
                      child: buildImageCircle(
                          'assets/images/yoga4.jpg', 'DefineYourGoal'))),
              BubbleNode.leaf(
                  value: 45000,
                  options: BubbleOptions(
                      color: Colors.purple.shade200,
                      child: buildImageCircle(
                          'assets/images/yoga7.jpg', 'HomeCare'))),
              BubbleNode.leaf(
                  value: 90000,
                  options: BubbleOptions(
                      color: Colors.blue.shade200,
                      child: buildImageCircle(
                          'assets/images/yoga6.jpg', 'HomeCare'))),
              BubbleNode.leaf(
                  value: 57800,
                  options: BubbleOptions(
                      color: Colors.red.shade200,
                      child: buildImageCircle(
                          'assets/images/yoga7.jpg', 'Gain Weight'))),
              BubbleNode.leaf(
                  value: 98700,
                  options: BubbleOptions(
                      color: Colors.pink.shade100,
                      child: buildImageCircle(
                          'assets/images/yoga7.jpg', 'HomeCare'))),
              BubbleNode.leaf(
                  value: 90600,
                  options: BubbleOptions(
                      color: Colors.amber.shade200,
                      child: buildImageCircle(
                          'assets/images/joga4.jpg', 'Be More Active Toned'))),
              BubbleNode.leaf(
                  value: 70000,
                  options: BubbleOptions(
                      color: Colors.purple.shade200,
                      child: buildImageCircle(
                          'assets/images/yoga6.jpg', 'Lose Weight'))),
            ],
          ),
        ]),
      ),
    );
  }

  buildImageCircle(String img, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        height: 500,
        width: 500,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: _isSelected ? Border.all(width: 2, color: primary) : null,
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            )),
        child: Stack(fit: StackFit.expand, clipBehavior: Clip.none, children: [
          Positioned(
            right: -23,
            top: -23,
            child: _isSelected
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    width: 40,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: primary),
                    child: Icon(
                      Icons.check,
                      size: 20,
                      color: white,
                    ))
                : Container(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Center(
              child: Text(
                title,
                style: kWhyteReg,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
