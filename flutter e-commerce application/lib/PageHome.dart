import 'package:flutter/material.dart';
import 'package:flutter_eticaret/PageCategories.dart';
import 'package:flutter_eticaret/PageProduct.dart';
import 'package:flutter_eticaret/PageSearch.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int currentIndex = 0;

  List pages = [
    PageCategories(),
    PageSearch(),
    PageProduct(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFFFF6969),
          unselectedItemColor: Color(0xFF727C8E),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: currentIndex,
          onTap: (e) {
            setState(() {
              currentIndex = e;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("Search")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: Text("Cart")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Profile")),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu), title: Text("More")),
          ]),
    );
  }
}
