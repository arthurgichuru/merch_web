import 'package:flutter/material.dart';

class SalesPage extends StatefulWidget {
  @override
  _SalesPageState createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                        children: <Widget>[
                          Container(
                            child: Text('Today', style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DataTable(columns: [
                              DataColumn(label: Text('Status',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                              DataColumn(label: Text('Description', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                              DataColumn(label: Text('Amount', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                              DataColumn(label: Text('Type', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                              DataColumn(label: Text('Date', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                            ], rows: [
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                    DataCell(Text('0723xx35')),
                                    DataCell(Text('20,000')),
                                    DataCell(Text('Loop')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                    DataCell(Text('0723xx35')),
                                    DataCell(Text('10,000')),
                                    DataCell(Text('M-PESA')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                    DataCell(Text('4251xx9457')),
                                    DataCell(Text('30,000')),
                                    DataCell(Text('CARD')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                    DataCell(Text('0723xx35')),
                                    DataCell(Text('15,000')),
                                    DataCell(Text('M-PESA')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                    DataCell(Text('0723xx35')),
                                    DataCell(Text('20,000')),
                                    DataCell(Text('Loop')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.block, color: Colors.red,)),
                                    DataCell(Text('0723xx35')),
                                    DataCell(Text('20,000')),
                                    DataCell(Text('Loop')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                    DataCell(Text('0723xx35')),
                                    DataCell(Text('20,000')),
                                    DataCell(Text('Loop')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                    DataCell(Text('4251xx9457')),
                                    DataCell(Text('30,000')),
                                    DataCell(Text('CARD')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                              DataRow(
                                  cells: [
                                    DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                    DataCell(Text('4251xx9457')),
                                    DataCell(Text('30,000')),
                                    DataCell(Text('CARD')),
                                    DataCell(Text('26/05/2020')),
                                  ]),
                            ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Text('Yesterday', style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold)),
                          ),
                          DataTable(columns: [
                            DataColumn(label: Text('Status',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
                            DataColumn(label: Text('Description', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                            DataColumn(label: Text('Amount', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                            DataColumn(label: Text('Type', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                            DataColumn(label: Text('Date', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                          ], rows: [
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                  DataCell(Text('0723xx35')),
                                  DataCell(Text('20,000')),
                                  DataCell(Text('Loop')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                  DataCell(Text('0723xx35')),
                                  DataCell(Text('10,000')),
                                  DataCell(Text('M-PESA')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                  DataCell(Text('4251xx9457')),
                                  DataCell(Text('30,000')),
                                  DataCell(Text('CARD')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                  DataCell(Text('0723xx35')),
                                  DataCell(Text('15,000')),
                                  DataCell(Text('M-PESA')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                  DataCell(Text('0723xx35')),
                                  DataCell(Text('20,000')),
                                  DataCell(Text('Loop')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.block, color: Colors.red,)),
                                  DataCell(Text('0723xx35')),
                                  DataCell(Text('20,000')),
                                  DataCell(Text('Loop')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                  DataCell(Text('0723xx35')),
                                  DataCell(Text('20,000')),
                                  DataCell(Text('Loop')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                  DataCell(Text('4251xx9457')),
                                  DataCell(Text('30,000')),
                                  DataCell(Text('CARD')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                            DataRow(
                                cells: [
                                  DataCell(Icon(Icons.check_circle, color: Colors.green,)),
                                  DataCell(Text('4251xx9457')),
                                  DataCell(Text('30,000')),
                                  DataCell(Text('CARD')),
                                  DataCell(Text('26/05/2020')),
                                ]),
                          ],
                          ),
                        ]
                    ),
                  ),
                ),
              ),
            )
        )
    );
  }
}
