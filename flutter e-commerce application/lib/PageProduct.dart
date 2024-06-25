import 'package:flutter/material.dart';

class PageProduct extends StatefulWidget {
  @override
  _PageProductState createState() => _PageProductState();
}

class _PageProductState extends State<PageProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Faux Sued Ankle Boots",
            style: TextStyle(
                color: Color(0xFF515C6F),
                fontSize: 15,
                wordSpacing: 2,
                fontFamily: 'NeusaNextPro')),
        titleSpacing: 0,
        leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Color(0xFFFF6969), size: 30),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        actions: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              IconButton(
                  icon:
                  Icon(Icons.shopping_cart, color: Color(0xFF727C8E)),
                  onPressed: () {}),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Color(0xFFFF6969),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 20,
                width: 20,
                child: Text("7",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'NeusaNextPro')),
              )
            ],
          )
        ],
        bottom: PreferredSize(
            child: Container(
              child: Row(
                children: <Widget>[
                  Spacer(flex: 1),
                  Text("\$49.99",
                      style: TextStyle(
                          fontFamily: 'NeusaNextPro',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF515C6F))),
                  SizedBox(width: 10),
                  Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF6969),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.only(
                          top: 4, bottom: 4, left: 5, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.star, size: 15, color: Colors.white),
                          Text("4.9",
                              style: TextStyle(
                                  fontFamily: 'NeusaNextPro',
                                  color: Colors.white)),
                        ],
                      )),
                  Spacer(flex: 1),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(25)),
      ),
      body: PageView(
        children: <Widget>[

        ],
      ),
    );
  }
}
