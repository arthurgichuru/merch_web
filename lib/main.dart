import 'package:flutter/material.dart';

import 'Pages/BalancePage.dart';
import 'Pages/BankDetailsPage.dart';
import 'Pages/ConfirmOTPPage.dart';
import 'Pages/CustomerOptionsPage.dart';
import 'Pages/CustomerPage.dart';
import 'Pages/CustomerProfile.dart';
import 'Pages/HomePage.dart';
import 'Pages/MainProductsPage.dart';
import 'Pages/PosPage.dart';
import 'Pages/SalesPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes:{
        '/':(context)=>HomePage(),
        '/CustomerProfile':(context)=>CustomerProfile(),
        '/ConfirmOTPPage':(context)=>ConfirmOTPPage(),
        '/CustomerOptionsPage':(context)=>CustomerOptionsPage(),
        '/BankDetailsPage':(context)=>BankDetailsPage(),
        '/MainProductsPage':(context)=>MainProductsPage(),
        '/PosPage':(context)=>PosPage(),
        '/SalesPage':(context)=>SalesPage(),
        '/CustomerPage':(context)=>CustomerPage(),
        '/BalancePage':(context)=>BalancePage(),
      }
    );
  }
}
