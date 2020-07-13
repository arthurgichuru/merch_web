import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';

class BankDetailsPage extends StatefulWidget {
  @override
  _BankDetailsPageState createState() => _BankDetailsPageState();
}

class _BankDetailsPageState extends State<BankDetailsPage> {
  Image _imageFile;
  final ImagePicker _picker = ImagePicker();
  String dropdownValue = 'Agriculture; plantations; other rural sectors';
  String dropdownValue1 = "ABC Bank (Kenya)";


  getImage() async{
    //final pickedFile  = await _picker.getImage(source: ImageSource.gallery);
    Image fromPicker = await ImagePickerWeb.getImage(outputType: ImageType.widget);
 if(fromPicker != null){
   setState(() {
     _imageFile = fromPicker;
     print('_imageFile $_imageFile');
   });
 }}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffeeeeee),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //Bank Details
                  Padding(
                    padding: const EdgeInsets.only(top:10, right: 400,left: 400,bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0, right: 10, top:30, bottom: 20),
                          child: Text('Bank Details',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0, right: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                filled:true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                helperText: 'Whats Your Account Name?'
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
                                helperText: 'Whats Your Account Number?'
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0, right: 10.0),
                              child: Container(
                                  width: 600,
                               /*   decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.black12
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                  ),*/
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        child: DropdownButtonFormField<String>(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                                          ),
                                          value: dropdownValue1,
                                          onChanged: (String newValue1){
                                            setState(() {
                                              dropdownValue1 = newValue1;
                                            });
                                          },
                                          items: <String>[
                                            "ABC Bank (Kenya)",
                                            "Bank of Africa",
                                            "Bank of Baroda",
                                            "Bank of India",
                                            "Barclays Bank of Kenya",
                                            "Citibank",
                                            "Commercial Bank of Africa",
                                            "Consolidated Bank of Kenya",
                                            "Cooperative Bank of Kenya",
                                            "Credit Bank",
                                            "Development Bank of Kenya",
                                            "Diamond Trust Bank",
                                            "Dubai Islamic Bank",
                                            "Ecobank Kenya",
                                            "Equity Bank",
                                            "Family Bank",
                                            "First Community Bank",
                                            "Guaranty Trust Bank Kenya",
                                            "Guardian Bank",
                                            "Gulf African Bank",
                                            "Habib Bank AG Zurich",
                                            "Housing Finance Company of Kenya",
                                            "I&M Bank",
                                            "Jamii Bora Bank",
                                            "Kenya Commercial Bank",
                                            "Mayfair Bank",
                                            "Middle East Bank Kenya",
                                            "National Bank of Kenya",
                                            "NIC Bank",
                                            "Oriental Commercial Bank",
                                            "Paramount Universal Bank",
                                            "Prime Bank (Kenya)",
                                            "SBM Bank Kenya Limited",
                                            "Sidian Bank",
                                            "Spire Bank",
                                            "Stanbic Bank Kenya",
                                            "Standard Chartered Kenya",
                                            "Trans National Bank Kenya",
                                            "United Bank for Africa",
                                            "Victoria Commercial Bank",
                                          ].map<DropdownMenuItem<String>>((String value1) {
                                            return DropdownMenuItem<String>(
                                              value: value1,
                                              child: Text(value1),
                                            );
                                          }).toList(),
                                        )
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Container(
                                child: Text('Select Your Bank', style: TextStyle(fontSize: 12, color: Colors.black54),textAlign: TextAlign.left,) ,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0, right: 10.0, bottom: 5),
                          child: Container(
                            width: double.infinity,
                            child: RaisedButton(
                                color: Colors.deepOrange,
                                child: Text('SAVE BANK DETAILS', style: TextStyle(color: Colors.white),),
                                onPressed: (){
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmOTPPage()));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Business Information
                  Padding(
                    padding: const EdgeInsets.only(top:20, right: 400,left: 400,bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0, right: 10, top:10, bottom: 30),
                          child: Text('Business Information',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0, right: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                filled:true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                //labelText: 'Registered Business name',
                                helperText: 'What is your registered business name'
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
                                helperText: 'What does your business do?'
                            ),
                            maxLines: 5,
                            keyboardType: TextInputType.text,
                          ),
                        ),

                        SizedBox(height: 20),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0, right: 10.0),
                              child: Container(
                                width: 600,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                                      ),
                                      value: dropdownValue,
                                      onChanged: (String newValue){
                                          setState(() {
                                            dropdownValue = newValue;
                                          });
                                      },
                                      items: <String>[
                                        'Agriculture; plantations; other rural sectors',
                                        'Basic Metal Production ',
                                        'Chemical industries',
                                        'Commerce',
                                        'Construction',
                                        'Education',
                                        'Financial services; professional services',
                                        'Food; drink; tobacco',
                                        'Forestry; wood; pulp and paper',
                                        'Health services ',
                                        'Hotels; tourism; catering',
                                        'Mining (coal; other mining)',
                                        'Mechanical and electrical engineering ',
                                        'Media; culture; graphical',
                                        'Oil and gas production; oil refining ',
                                        'Postal and telecommunications services ',
                                        'Public service',
                                        'Shipping; ports; fisheries; inland waterways ',
                                        'Textiles; clothing; leather; footwear',
                                        'Transport (including civil aviation; railways; road transport)',
                                        'Utilities (water; gas; electricity) ',
                                      ].map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    )
                                  ),
                                )
                                ),
                              ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Container(
                                child: Text('Select Your Industry', style: TextStyle(fontSize: 12, color: Colors.black54),textAlign: TextAlign.left,) ,
                              ),
                            ),
                          ],
                        )
                         ]
                        ),
                        )
                      ],
                    ),
                  ),

                  //Upload Files
                  Padding(
                    padding: const EdgeInsets.only(top:20.0,left: 400, right: 400,bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text('Memorandum and Articles of Association'),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: FlatButton(
                                          color: Colors.deepOrange,
                                          child: Text('Choose File to upload', style: TextStyle(color: Colors.white),),
                                          onPressed: ()=>getImage(),
                                    ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text('Certificate of Incorporation'),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: FlatButton(
                                          color: Colors.deepOrange,
                                          child: Text('Choose File to upload', style: TextStyle(color: Colors.white),),
                                          onPressed: ()=>getImage()),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text('KRA Tax Certificate'),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: FlatButton(
                                          color: Colors.deepOrange,
                                          child: Text('Choose File to upload', style: TextStyle(color: Colors.white),),
                                          onPressed: ()=>getImage(),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text('Director Identification documents'),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: FlatButton(
                                          color: Colors.deepOrange,
                                          child: Text('Choose File to upload', style: TextStyle(color: Colors.white),),
                                          onPressed: ()=>getImage(),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0, right: 10.0, bottom: 10),
                          child: Container(
                            width: double.infinity,
                            child: RaisedButton(
                                color: Colors.deepOrange,
                                child: Text('SAVE COMPLIANCE INFORMATION', style: TextStyle(color: Colors.white),),
                                onPressed: (){},
                                ),
                          ),
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  )
                ],
              ),
            ),
           );
  }
}
