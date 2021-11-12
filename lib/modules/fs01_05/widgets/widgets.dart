import 'package:flutter/material.dart';
import 'package:fs01/themes/app_colors.dart';
import 'stateless/avatar.dart';

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _width = (_size.width+_size.height)*0.32;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: AppColor.primaryColor,
        child: Container(),
      )
    );
  }
}
//child: Row(
//           // mainAxisSize: MainAxisSize.min,
//           // mainAxisAlignment: MainAxisAlignment.start,
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               margin: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: AppColor.primaryColor,
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(10.0),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.7),
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Container(
//
//                 //  color: Colors.pink,
//                   child: Row(
//                     children:  [
//                       const Avatar(
//                         url:
//                             'https://randomuser.me/api/portraits/med/men/48.jpg',
//                       ),
//                       const SizedBox(width: 15,),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('data1'),
//                               SizedBox(width: 100,),
//                               Text('data')
//                             ],
//                           ),
//                           SizedBox(height: 1,),
//                           Text('data'),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),