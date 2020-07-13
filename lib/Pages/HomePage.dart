import 'package:flutter/material.dart';

import 'CustomerProfile.dart';
import 'MainProductsPage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffeeeeee),
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 100, 10, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 300,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Card(
                          elevation: 10,
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Container(
                                child: Text('LOOP BUSINESS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset('images/looplogo.png', fit:BoxFit.contain,),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset('images/looplogo.png', fit:BoxFit.contain,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:10.0, right: 10, top:10),
                                child: Text('Log in', style: TextStyle(fontSize: 16),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:10.0, right: 10, top: 30),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'User Name'
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),

                              Padding(
                                padding: const EdgeInsets.only(left:10.0, right: 10.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: ' Password'
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                ),
                              ),
                              SizedBox(height: 40),

                              Padding(
                                padding: const EdgeInsets.only(left:10.0, right: 10.0, bottom: 10),
                                child: Container(
                                  width: double.infinity,
                                  child: RaisedButton(
                                      color: Colors.deepOrange,
                                      child: Text('LOG IN', style: TextStyle(color: Colors.white),),
                                      onPressed: (){
                                          Navigator.of(context).pushNamed('/MainProductsPage');
                                        //Navigator.push(context, MaterialPageRoute(builder: (contect)=>MainProductsPage()));
                                      }),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:50.0, right: 50, top:20, bottom: 50),
                                child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pushNamed('/CustomerProfile');
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerProfile()));
                                    },
                                    child: Text('CREATE ACCOUNT')),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
