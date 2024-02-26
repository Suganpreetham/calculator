
// ignore_for_file: unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:calculator/utils/button.dart';

class Keypad extends StatefulWidget {
  const Keypad({super.key});

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(color: Color.fromARGB(255, 82, 81, 81), text: "AC", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 82, 81, 81), text: "%", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 82, 81, 81), text: "⌫", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 82, 81, 81), text: "÷", textcolor: Colors.white),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "7", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "8", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "9", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 82, 81, 81), text: "x", textcolor: Colors.white),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "4", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "5", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "6", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 82, 81, 81), text: "-", textcolor: Colors.white),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "1", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "2", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "3", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 82, 81, 81), text: "+", textcolor: Colors.white),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "00", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: "0", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 31, 30, 30), text: ".", textcolor: Colors.white),
            MyButton(color: Color.fromARGB(255, 243, 111, 2), text: "=", textcolor: Colors.white),
          ],
        ),
      ],
    );
  }
}