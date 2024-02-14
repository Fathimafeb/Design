import 'package:flutter/material.dart';
import 'package:sample/Sampledesign.dart';

class Bottonav extends StatefulWidget {
  const Bottonav({super.key});

  @override
  State<Bottonav> createState() => _BottonavState();
}

class _BottonavState extends State<Bottonav> {
  int indexNum = 0;
  List page= [Design(),Design(),Design(),Design()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.grey,
      currentIndex: indexNum,
      selectedIconTheme: IconThemeData(color: Colors.black,),
      onTap: (int Index) {
        setState(() {
          indexNum =Index;

        });
      },
      items: const [
        BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.call),label:'Call'),
        BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label:'Cart'),
        BottomNavigationBarItem(icon:Icon(Icons.file_copy),label:'Report'),

      ],
    ),
      body: page[indexNum],
    );
  }
}
