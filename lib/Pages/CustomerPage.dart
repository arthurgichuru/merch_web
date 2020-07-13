import 'package:flutter/material.dart';


class CustomerPage extends StatefulWidget {
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DataTable(columns: [
                          DataColumn(label: Text('Customer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                          DataColumn(label: Text('F.Name', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12))),
                          DataColumn(label: Text('L.Name', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12))),
                          DataColumn(label: Text('Phone', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12))),
                          DataColumn(label: Text('email', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12))),
                        ], rows: [
                          DataRow(
                              cells: [
                                DataCell(Icon(Icons.perm_identity, color: Colors.green,)),
                                DataCell(Text('Sonko')),
                                DataCell(Text('Malong')),
                                DataCell(Text('0723xx35')),
                                DataCell(Text('sm@malong.com')),
                              ]),
                          DataRow(
                              cells: [
                                DataCell(Icon(Icons.perm_identity, color: Colors.green,)),
                                DataCell(Text('John')),
                                DataCell(Text('Doe')),
                                DataCell(Text('0723xx55')),
                                DataCell(Text('Jdoe@doe.com')),
                              ]),
                          DataRow(
                              cells: [
                                DataCell(Icon(Icons.perm_identity, color: Colors.green,)),
                                DataCell(Text('Jane')),
                                DataCell(Text('Doe')),
                                DataCell(Text('0723xx45')),
                                DataCell(Text('Jdoe@doe.com')),
                              ]),
                          DataRow(
                              cells: [
                                DataCell(Icon(Icons.perm_identity, color: Colors.green,)),
                                DataCell(Text('Juma')),
                                DataCell(Text('Bakari')),
                                DataCell(Text('0723xx25')),
                                DataCell(Text('JBakari@juma.com')),
                              ]),
                          DataRow(
                              cells: [
                                DataCell(Icon(Icons.perm_identity, color: Colors.green,)),
                                DataCell(Text('Otis')),
                                DataCell(Text('Tibim')),
                                DataCell(Text('0723xx25')),
                                DataCell(Text('otis@tibim.com')),
                              ]),
                          DataRow(
                              cells: [
                                DataCell(Icon(Icons.perm_identity, color: Colors.green,)),
                                DataCell(Text('Casper')),
                                DataCell(Text('Ghost')),
                                DataCell(Text('0723xx25')),
                                DataCell(Text('capser@ghost.com')),
                              ]),
                              ]
                        ),
                      ),
                      ],
                      ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateCustomerScreen()));
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
