import 'package:flutter/material.dart';
import 'package:hello/color.dart';
import 'package:hello/image.dart';
import 'package:hello/like.dart';
import 'package:hello/questions.dart';
import 'package:hello/validation.dart';




class val extends StatefulWidget {
  const val({super.key});

  @override
  State<val> createState() => _valState();
}

class _valState extends State<val> {

  int index = 0;

  List page = [
    color(),
    img(),
    qas(),
    vali(),
    like(),




  ];

  tap(a)
  {
    setState(() {
      index = a;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.directions,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Colors.black,),label: "Home"),
        ],
        currentIndex: index,
        onTap: tap,






      ),




    );
  }
}
