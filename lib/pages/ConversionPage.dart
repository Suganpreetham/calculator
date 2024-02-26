// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
class ConversionPage extends StatelessWidget {
  const ConversionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.width * 0.92; 
    double containerHeight = 460;
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme:const IconThemeData(color: Color.fromARGB(255, 213, 211, 211)),
        title: const Padding(
          padding: EdgeInsets.only(right: 30),
          child: Text(
            'Unit Converter',
            style: TextStyle(
              color: Color.fromARGB(255, 222, 220, 220),
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          width: containerWidth,
          height: containerHeight,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    //3 icons
                    iconsContainer(Icons.currency_exchange, () {},"Currency"),
                    iconsContainer(Icons.straighten_sharp, () {},"Length"),
                    iconsContainer(Icons.crop_square, () {},"Area"),
                  ],
                ),
                Row(
                  //3 icons
                  children: [
                    iconsContainer(Icons.view_in_ar, () {},"Volume"),
                    iconsContainer(Icons.fitness_center_outlined, () {},"Weight"),
                    iconsContainer(Icons.thermostat_outlined, () {},"Temperature"),
            
                  ],
                ),
                Row(
                  children: [
                    iconsContainer(Icons.speed_outlined, () {},"Speed"),
                    iconsContainer(Icons.timer, () {},"Pressure"),
                    iconsContainer(Icons.bolt, () {},"Power"),
                  ],
                ),
              ],
          ),
        ),
      ),
    );
  }
}

Widget iconsContainer(IconData icon,VoidCallback onTapCallBack,String text) {
  return Container(
    width: 110.40,
    height: 153.30,
    decoration: BoxDecoration(
      color: Colors.black,
    ),
    child:Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
            onPressed: onTapCallBack,
            icon: Icon(icon,color: Colors.white),
            iconSize: 30,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    )
  );
}