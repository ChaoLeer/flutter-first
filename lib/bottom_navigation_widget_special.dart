import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/find_screen.dart';
import 'pages/mine_screen.dart';

// 组件会变动的会使用动态组建继承
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> pageList = List();

  @override
  void initState() {
    // TODO: implement initState
    pageList
      ..add(HomeScreen())
      ..add(FindScreen())
      ..add(MineScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _BottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor
            ),
            title: Text(
              'Find',
              style: TextStyle(color: _BottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor
            ),
            title: Text(
              'Mine',
              style: TextStyle(color: _BottomNavigationColor)
            )
          )
        ],
        onTap: (int pageIndex){
          setState(() {
           _currentIndex = pageIndex; 
          });
        },
      ),
      body: pageList[_currentIndex],
    );
  }
}