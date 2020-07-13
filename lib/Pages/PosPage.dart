import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class PosPage extends StatefulWidget {


  @override
  _PosPageState createState() => _PosPageState();
}

class _PosPageState extends State<PosPage> {

  var controller = new MoneyMaskedTextController(
      decimalSeparator: '.', thousandSeparator: ',');


  String output = "0";

  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText){

    if(buttonText == "CLEAR"){

      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else if (buttonText == "+" ){

      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";

    } else if(buttonText == "."){

      if(_output.contains(".")){
        print("Already conatains a decimals");
        return;

      } else {
        _output = _output + buttonText;
      }

    } else if (buttonText == "="){

      num2 = double.parse(output);

      if(operand == "+"){
        _output = (num1 + num2).toString();
      }


      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else {

      _output = _output + buttonText;

    }

    print(_output);

    setState(() {

      output = double.parse(_output).toStringAsFixed(2);

    });

  }

  Widget CardButton(String buttonText) {
    return Expanded(
            child: GestureDetector(
              onTap: () => buttonPressed(buttonText),
              child: Container(
                height: 90,
                width: 90,
                child: Card(
                      child: Center(
                        child: Text(buttonText, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold
          ),
        ),
                      ),
      ),
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          color: Colors.black12,
                          alignment: Alignment.centerRight,
                          padding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0
                          ),
                          child: new Text(output, style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold,))
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 60,
                        width:double.infinity,
                        child: RaisedButton(
                          child: Text('CHARGE', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          onPressed: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>ChargeScreens()));
                        },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column
                  (children: [
                  Row(children: [
                    CardButton("7"),
                    CardButton("8"),
                    CardButton("9"),
                  ]
                  ),
                  Row(children: [
                    CardButton("4"),
                    CardButton("5"),
                    CardButton("6"),
                  ]
                  ),
                  Row(children: [
                    CardButton("1"),
                    CardButton("2"),
                    CardButton("3"),
                  ]
                  ),
                  Row(children: [
                    CardButton(""),
                    CardButton("0"),
                    CardButton("+")
                  ]),
                  Row(children: [
                    CardButton("CLEAR"),
                    CardButton("="),
                  ])
                ]),
              ),
            )
          ],
        ));
  }
}

