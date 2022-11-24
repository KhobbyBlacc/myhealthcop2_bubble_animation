import 'package:flutter/material.dart';
import 'package:myhealthcop2/widgets/wrap_widget.dart';


class BubCircles extends StatefulWidget {
  BubCircles({super.key});

  @override
  State<BubCircles> createState() => _BubCirclesState();
}

class _BubCirclesState extends State<BubCircles> {
  List _pickServices = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 500,
      // child: ListView(
      //   scrollDirection: Axis.horizontal,
      //     shrinkWrap: true,
      //     children: [
      //       ...List.generate(
      //           serviceList.length,
      //           (index) => items(
      //                 services: serviceList[index],
      //                 onSelected: (bool value) {
      //                   //takingValue
      //                   if (value) {
      //                     _pickServices.add(serviceList[index]);
      //                   } else {
      //                     _pickServices.remove(serviceList[index]);
      //                   }
      //                   setState(() {});
      //                 },
      //               )),
      //     ])
      child: WrapBubble(),
    );
  }
}


//used for listviewBuilder
// class items extends StatefulWidget {
//   final Services services;
//   final ValueChanged<bool> onSelected;
//   const items({
//     required this.services,
//     required this.onSelected,
//   });

//   @override
//   State<items> createState() => _itemsState();
// }

// class _itemsState extends State<items> {
//   bool _isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isSelected = !_isSelected;
//           //callback
//           widget.onSelected(_isSelected);
//         });
//       },
//       child: TweenAnimationBuilder(
//         tween: Tween(begin: 0.0, end: 0.1),
//         curve: Curves.easeInOut,
//         builder: (context, value, child) {
//           return Transform.scale(
//             scale: 1.0,
//             child: child,
//           );
//         },
//         duration: Duration(seconds: 2),
//         child: Container(
//           height: 150,
//           width: 150,
//           margin: EdgeInsets.all(10),
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: _isSelected ? Border.all(width: 2, color: primary) : null,
//               image: DecorationImage(
//                 image: AssetImage(widget.services.img),
//                 fit: BoxFit.cover,
//               )),
//           child:
//               Stack(fit: StackFit.expand, clipBehavior: Clip.none, children: [
//             Positioned(
//               right: -16,
//               top: 0,
//               child: _isSelected
//                   ? Container(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       height: 40,
//                       width: 40,
//                       decoration:
//                           BoxDecoration(shape: BoxShape.circle, color: primary),
//                       child: Icon(
//                         Icons.check,
//                         color: white,
//                       ))
//                   : Container(),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Center(
//                 child: SizedBox(
//                   width: 100,
//                   child: Text(
//                     widget.services.name,
//                     style: kWhyte,
//                   ),
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }
