import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import 'BankDetailsPage.dart';
import 'CustomerOptionsPage.dart';

class ConfirmOTPPage extends StatefulWidget {
  @override
  _ConfirmOTPPageState createState() => _ConfirmOTPPageState();
}

class _ConfirmOTPPageState extends State<ConfirmOTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffeeeeee),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:500, top:200, right:500, bottom: 30),
              child: Center(child: Text('Check your mail box or SMS for confirmation code', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
            ),
            PinEntryTextField(
              showFieldAsBox: true,
              isTextObscure: true,
              onSubmit: (String pin) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Pin"),
                        content: Text('Pin entered is $pin'),
                      );
                    }
                );
              }
            ),

            Padding(
              padding: const EdgeInsets.only(left:50.0, right: 50.0, bottom: 50, top: 20),
              child: Container(
                child: RaisedButton(
                    color: Colors.deepOrange,
                    child: Text('CONFIRM', style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.of(context).pushNamed('/CustomerOptionsPage');
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerOptionsPage()));
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
