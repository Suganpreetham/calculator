// ignore: file_names

// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace, file_names, duplicate_ignore, unused_import
import 'package:calculator/utils/button.dart';
import 'package:calculator/utils/keypad.dart';
import 'package:flutter/material.dart';
import 'package:calculator/pages/ConversionPage.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.black,//theme colour
      appBar: AppBar(
        toolbarHeight:50,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            iconSize: 24,
            color:const Color.fromARGB(255, 193, 191, 191),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => ConversionPage(),));
            },
            icon: const Icon(Icons.window_rounded),
            tooltip: 'Conversions',
          ),
          PopupMenuButton<String>(
              iconColor: Colors.white,
              iconSize: 21,
              onSelected: (value) {
                // Handle the selected item from the menu
                print('Selected: $value');
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem<String>(
                  value: 'Selected history',
                  child: Text('History'),
                  onTap: () {
    
                  },
                ),
                PopupMenuItem<String>(
                  value: 'Selected Settings',
                  child: Text('Settings'),
                  onTap: () {
                    
                  },
                ),
              ],
            ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              reverse: true,
              child: Container(
                alignment: Alignment.bottomRight,
                height: 255,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 45),
                    textAlign: TextAlign.end,
                    keyboardType: TextInputType.none,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          const Wrap(
            children: [
              Keypad(),
            ],
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}