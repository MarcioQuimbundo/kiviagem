import 'package:flutter/material.dart';
import 'package:kiviagem/main.dart';

class CustomAppBar extends StatelessWidget {

  final List<BottomNavigationBarItem> bottomBarItems = [];
  final bottomNavigationBarItemStyle = TextStyle(fontStyle: FontStyle.normal, color: Colors.black);
  CustomAppBar() {
    bottomBarItems.add(
      BottomNavigationBarItem(
        activeIcon: Icon(Icons.home, color: appTheme.primaryColor),
        icon: Icon(Icons.home, color: Colors.black),
        title: Text("Explorar", style: bottomNavigationBarItemStyle),
      ), 
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite, color: Colors.black),
        title: Text("Favoritos", style: bottomNavigationBarItemStyle),
      ), 
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.local_offer, color: Colors.black),
        title: Text("Deals", style: bottomNavigationBarItemStyle),
      ), 
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications, color: Colors.black),
        title: Text("Notificações", style: bottomNavigationBarItemStyle),
      ), 
    );
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.0,
          child: BottomNavigationBar(
        items: bottomBarItems,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}