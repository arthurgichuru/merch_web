import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BalancePage extends StatefulWidget {
  @override
  _BalancePageState createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(left:20.0),
                                child: Text('Available Balance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.black54),),
                              )),
                              VerticalDivider(),
                              Expanded(child: Text('KES 50,000',style: TextStyle(fontSize: 25,color: Colors.black54)))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: GestureDetector(
                              onTap: (){},
                              child: Text('History',style: TextStyle(fontSize: 18,color: Colors.blueAccent))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Actual Balance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.black54),),
                              VerticalDivider(),
                              Text('KES 0.00',style: TextStyle(fontSize: 25,color: Colors.black54))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: GestureDetector(
                              onTap: (){},
                              child: Text('History',style: TextStyle(fontSize: 18,color: Colors.blueAccent))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
