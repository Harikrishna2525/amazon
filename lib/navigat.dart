import 'package:amazon/home.dart';
import 'package:amazon/insta.dart';
import 'package:amazon/login.dart';
import 'package:amazon/product.dart';
import 'package:amazon/spotify.dart';
import 'package:amazon/whatsapp.dart';
import 'package:flutter/material.dart';

class navi extends StatefulWidget {
  const navi({super.key});

  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  int currentindex=0;
  final nav=[
    hom(),
    prod(),
    spot(),
    insta(),
    wats(),
  ];
  void Hari (index)
  {
    setState(() {
      currentindex=(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nav[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.production_quantity_limits,color: Colors.brown,),label: "products"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note,color: Colors.green,),label: "Spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.whatshot_rounded,color:Colors.blue,),label: "Insta"),
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.blueAccent,),label: "Whatsapp")
        ],
        currentIndex: currentindex,
        onTap: Hari,
      ),
    );
  }
}
