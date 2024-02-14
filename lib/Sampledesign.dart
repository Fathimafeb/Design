import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Design extends StatefulWidget {
  
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}





class _DesignState extends State<Design> {
  String dropdownValue = list.first;
  static const List<String> list = <String> ['  Calicut','  Wayanad','  Thrissur','  Trivandrum'];

  var userdata;
  Future<dynamic>fetchUser() async {
    final response = await http.get(Uri.parse(
        'https://demo.ezyerp.live/api/banners?X-API-KEY=DemoApi1234'));
    userdata = jsonDecode(response.body);
    print(response.body);
    setState(() {
      return userdata;
    });
  }


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height:50 ,
              width: 200,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: DropdownButton<String>(
                icon: Icon(Icons.keyboard_arrow_down),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue =value!;
                  });
                },
                value: dropdownValue,
                items: list.map<DropdownMenuItem<String>>((value){
                  return DropdownMenuItem(
                    value: value,
                      child:Text(value) );
                }).toList(),
              ),
            ),
            SizedBox(height: 20,),
            SearchBar(leading: Text("Search",style: TextStyle(fontSize: 20,color: Colors.grey),),),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Welcome!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
                    Text("How you feeling today",style: TextStyle(fontSize: 15),),

                  ],
                ),

                Icon(Icons.person_outline_rounded,size: 30,)
              ],
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20),),color: Colors.grey[300]) ,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(
                  leading: Column(

                    children: [

                      Text('Explore our Family package',style: TextStyle(fontSize:20,color: Colors.white ),),
                      Text('Complete Health for Family member'),
                    ],
                  ),
                  trailing: Image.asset('Assets/family.jpeg',fit: BoxFit.fill),

                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                      child: Image.asset('Assets/thy.jpeg'),
                    ),
                    Text("Thyroid")
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                      child: Image.asset('Assets/dia.jpeg'),
                      
                    ),
                    Text("Diabetes")
                  ],
                ),Column(
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                      child: Image.asset('Assets/heart.jpeg',),
                    ),
                    Text("Heart")
                  ],
                ),Column(
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                      child: Image.asset('Assets/vitamin.jpeg',),
                    ),
                    Text("Vitamin")
                  ],
                )
              ],

            ),
            Text("Why Choose Us",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                 children: [
                   Container(
                     height: 100,
                     width: 200,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                     child: ListTile(
                       subtitle: Column(mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text('NABL'),
                           Text("  Approved labs")
                         ],
                       ),
                     ),
                   ),
                   SizedBox(width: 10,),
                   Container(
                     height: 100,
                     width: 200,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                     child: ListTile(
                       subtitle: Column(mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text('NABL'),
                           Text("  Approved labs")
                         ],
                       ),
                     ),
                   ),
                   SizedBox(width: 10,),
                   Container(
                     height: 100,
                     width: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                     child: ListTile(
                       subtitle: Column(mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text('NABL'),
                           Text("  Approved labs")
                         ],
                       ),
                     ),
                   ),
                 ],
              ),
            ),
            Text("Family prime packages",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
            Container(
              height: 150,
              width: double.infinity,
              decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20),),color: Colors.grey[300]) ,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(
                  leading: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Senior Citizen Full Body ',style: TextStyle(fontSize:20,color: Colors.black ),),
                      Text('Check Up',style: TextStyle(fontSize:10,color: Colors.black ),),
                    ],
                  ),
                  trailing: Image.asset('Assets/family.jpeg',fit: BoxFit.fill),

                ),
              ),
            ),
            
          ],
        ),
      ),

    );
  }
}
