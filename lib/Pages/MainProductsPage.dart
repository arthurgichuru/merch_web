import 'package:flutter/material.dart';

import 'BalancePage.dart';
import 'BankDetailsPage.dart';
import 'CollectPaymentsPage.dart';
import 'CustomerOptionsPage.dart';
import 'CustomerPage.dart';
import 'DashboardPage.dart';
import 'PosPage.dart';
import 'SalesPage.dart';

class MainProductsPage extends StatefulWidget {
  @override
  _MainProductsPageState createState() => _MainProductsPageState();
}

class _MainProductsPageState extends State<MainProductsPage> {
  int _selectedIndex = 0;
  final List<Widget> screens = [
    PosPage(),
    SalesPage(),
    DashBoardPage(),
    CustomerPage(),
    BalancePage(),
    CollectPaymentsPage(),
    CollectPaymentsPage(),
    CollectPaymentsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.white,
            selectedIndex: _selectedIndex,
            selectedLabelTextStyle: TextStyle(fontSize: 12, color: Colors.blue), //unselectedLabelTextStyle: TextStyle(color: Colors.red),
                 onDestinationSelected: (int index){
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            leading: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/looplogo.png'),
                    ),
                    SizedBox(height: 5),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/looplogo.png'),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    child: Card(
                      child: Container(
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('TILL: 12345',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),

            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart, color: Colors.green,),
                selectedIcon: Icon(Icons.shopping_cart, color: Colors.orange,),
                label: Text('Collect'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.equalizer, color: Colors.deepPurpleAccent,),
                selectedIcon: Icon(Icons.equalizer, color: Colors.orange,),
                label: Text('Till-Sales'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.scatter_plot, color: Colors.blueAccent,),
                selectedIcon: Icon(Icons.scatter_plot, color: Colors.orange,),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.favorite, color: Colors.red,),
                selectedIcon: Icon(Icons.favorite, color: Colors.orange,),
                label: Text('Customers'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.view_module, color: Colors.blueAccent,),
                selectedIcon: Icon(Icons.view_module, color: Colors.orange,),
                label: Text('Balance'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.crop_rotate, color: Colors.blueAccent,),
                selectedIcon: Icon(Icons.crop_rotate,color: Colors.orange,),
                label: Text('Chargebacks'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.home, color: Colors.cyan,),
                selectedIcon: Icon(Icons.home, color: Colors.orange,),
                label: Text('Bank'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings, color: Colors.black54,),
                selectedIcon: Icon(Icons.settings, color: Colors.orange),
                label: Text('Settings'),
              ),
            ],
          ),
          VerticalDivider(thickness: 1,width: 1,),
          Expanded(child: screens[_selectedIndex],)
        ],
      ),
    );
  }
}
