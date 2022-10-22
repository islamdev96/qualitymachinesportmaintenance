// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ColumnTextDesktop extends StatelessWidget {
  const ColumnTextDesktop({super.key, required this.title, required this.text});
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: AutoSizeText(
              textAlign: TextAlign.center,
              title, // overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color(0xFFE10A43),
                fontSize: MediaQuery.of(context).size.height * 0.039,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: AutoSizeText(
              textAlign: TextAlign.start,
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height * 0.028,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


























//  Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               // crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {},
//                   focusNode: FocusNode(),
//                   autofocus: true,
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all<Color>(
//                       Colors.green[800]!,
//                     ),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4.0),
//                         side: BorderSide(
//                           color: Colors.green[800]!,
//                         ),
//                       ),
//                     ),
//                   ),
//                   child: InkWell(
//                     // ignore: deprecated_member_use
//                     onTap: () => launch(
//                         'https://api.whatsapp.com/send?phone=201024176369'),
//                     child: const Text(
//                       'whatsapp',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   focusNode: FocusNode(),
//                   autofocus: true,
//                   style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all<Color>(Colors.blueAccent),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4.0),
//                         side: const BorderSide(color: Colors.blueAccent),
//                       ),
//                     ),
//                   ),
//                   child: InkWell(
//                     // ignore: deprecated_member_use
//                     onTap: () => launch(
//                         'https://www.facebook.com/Quality.machines.sport.maintenance'),
//                     child: const Text(
//                       'Facebook',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),