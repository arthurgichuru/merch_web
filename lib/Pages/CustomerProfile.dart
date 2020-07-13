import 'dart:html';

import 'package:flutter/material.dart';

import 'ConfirmOTPPage.dart';

class CustomerProfile extends StatefulWidget {
  @override
  _CustomerProfileState createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffeeeeee),
        child: ListView(
          children: [
             Row(
               children: [
                 Expanded(
                    child: Container(

                 ),
                  ),
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(left:10, right:10, bottom:50, top:50),
                     child: Container(
                       width: 200,
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left:10.0, right: 10, top:50),
                             child: Text('Create Profile',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:10.0, right: 10, top: 30),
                             child: Row(
                               children: [
                                 Expanded(
                                   child: TextField(
                                     decoration: InputDecoration(
                                       filled:true,
                                       fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                      ),
                                       labelText: 'First Name'
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 10),
                                 Expanded(
                                   child: TextField(
                                     decoration: InputDecoration(
                                         filled:true,
                                         fillColor: Colors.white,
                                         border: OutlineInputBorder(),
                                         labelText: 'Last  Name'
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.only(left:10.0, right: 10.0),
                             child: TextField(
                               decoration: InputDecoration(
                                   filled:true,
                                   fillColor: Colors.white,
                                   border: OutlineInputBorder(),
                                   labelText: 'Trading Name'
                               ),
                               keyboardType: TextInputType.text,
                             ),
                           ),
                           SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.only(left:10.0, right: 10.0),
                             child: TextField(
                               decoration: InputDecoration(
                                   filled:true,
                                   fillColor: Colors.white,
                                   border: OutlineInputBorder(),
                                   labelText: 'Email'
                               ),
                               keyboardType: TextInputType.emailAddress,
                             ),
                           ),
                           SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.only(left:10.0, right: 10.0),
                             child: TextField(
                               decoration: InputDecoration(
                                   filled:true,
                                   fillColor: Colors.white,
                                   border: OutlineInputBorder(),
                                   labelText: 'Phone'
                               ),
                               keyboardType: TextInputType.phone,
                             ),
                           ),
                           SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.only(left:10.0, right: 10.0),
                             child: TextField(
                               decoration: InputDecoration(
                                   filled:true,
                                   fillColor: Colors.white,
                                   border: OutlineInputBorder(),
                                   labelText: 'KRA Pin'
                               ),
                               keyboardType: TextInputType.text,
                             ),
                           ),
                           SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.only(left:10.0, right: 10.0),
                             child: TextField(
                               decoration: InputDecoration(
                                   filled:true,
                                   fillColor: Colors.white,
                                   border: OutlineInputBorder(),
                                   labelText: 'Password'
                               ),
                               keyboardType: TextInputType.visiblePassword,
                               obscureText: true,
                             ),
                           ),
                           SizedBox(height: 30),
                           Padding(
                             padding: const EdgeInsets.only(left:10.0, right: 10.0, bottom: 50),
                             child: Container(
                               width: double.infinity,
                               child: RaisedButton(
                                   color: Colors.deepOrange,
                                   child: Text('CREATE PROFILE', style: TextStyle(color: Colors.white),),
                                   onPressed: (){
                                         Navigator.of(context).pushNamed('/ConfirmOTPPage');
                                         //Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmOTPPage()));
                                   }),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Expanded(
                   child: Container(
                     width: 10,
                     height: 200,
                   ),
                 ),
               ],
             ),
          ],
        ),
      ) ,
    );
  }
}
