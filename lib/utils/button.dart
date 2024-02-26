// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textcolor;

  const MyButton({super.key,required this.color,required this.text,required this.textcolor,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,fixedSize: const Size.square(75)
        ),
        onPressed: (){
          
        },
        child: Text(
          text,
          style: TextStyle(color: textcolor,fontSize: 20,fontWeight: FontWeight.w600),
        )
      ),
    );
  }
}
