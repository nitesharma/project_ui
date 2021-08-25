import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project_ui/Screens/home.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xff1e1d37),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0xff8828d1),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color(0xff1e1d37),
              icon: Icon(EvaIcons.homeOutline),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff1e1d37),
              icon: Icon(EvaIcons.searchOutline),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff1e1d37),
              icon: Icon(EvaIcons.radioButtonOnOutline),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff1e1d37),
              icon: Icon(EvaIcons.checkmarkCircleOutline),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff1e1d37),
              icon: Icon(Icons.account_circle_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
