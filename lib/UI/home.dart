import 'package:flutter/material.dart';
import 'package:flutterinh/UI/reportAProblem.dart';
import 'package:flutterinh/UI/BuyOurProductsTab.dart';
import 'package:flutterinh/UI/AboutUsTab.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  var _pages = [ReportAProblemTab(), BuyOurProductsTab(), AboutUsTab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creative Beats App'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          Icon(
            Icons.add,
            size: 35,
          ),
        ],
      ),
      body: Container(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.report_problem),
            title: Text('Report a problem'),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('Buy Our Products'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('About us'),
            backgroundColor: Colors.blue,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () => debugPrint("FAB pressed"),
      ),
    );
  }
}
