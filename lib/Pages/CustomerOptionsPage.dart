import 'package:flutter/material.dart';

import 'BankDetailsPage.dart';

class CustomerOptionsPage extends StatefulWidget {
  @override
  _CustomerOptionsPageState createState() => _CustomerOptionsPageState();
}

class _CustomerOptionsPageState extends State<CustomerOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffeeeeee),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:400.0, right: 400, top: 300, bottom: 500),
              child: Card(
                child: Column(
                  children: [

                    ListTile(
                      leading: Icon(Icons.business_center, color: Colors.blue,),
                      title: Text('Accept Payments As  Registered Business'),
                      trailing: IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                        Navigator.of(context).pushNamed('/BankDetailsPage');
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=> BankDetailsPage()));
                      }),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(Icons.person,color: Colors.blue,),
                      title: Text('Accept Payments As An individual'),
                      trailing: IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){}),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
