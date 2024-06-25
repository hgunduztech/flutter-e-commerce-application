import 'package:flutter/material.dart';

class PageGetStared extends StatefulWidget {
  @override
  _PageGetStaredState createState() => _PageGetStaredState();
}

class _PageGetStaredState extends State<PageGetStared>
    with SingleTickerProviderStateMixin {
  var tabList;
  TabController tabController;

  TextEditingController signUpEmail =
      new TextEditingController(text: "deb@fwear.in");
  TextEditingController signUpUsername =
      new TextEditingController(text: "debmaj2");
  TextEditingController signUpPass =
      new TextEditingController(text: "debmaj2");

  @override
  void initState() {
    super.initState();

    tabList = [
      Tab(
          child: Text("Sign Up",
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', fontWeight: FontWeight.bold))),
      Tab(
          child: Text("Log In",
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', fontWeight: FontWeight.bold))),
      Tab(
          child: Text("Forgot Password",
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', fontWeight: FontWeight.bold))),
    ];

    tabController = new TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            labelPadding: EdgeInsets.only(left: 20, right: 70),
            isScrollable: true,
            indicator: BoxDecoration(color: Colors.transparent),
            labelStyle: TextStyle(fontSize: 30),
            labelColor: Color(0xFF515C6F),
            unselectedLabelColor: Color(0x50515C6F),
            controller: tabController,
            tabs: tabList,
          )),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: TabBarView(controller: tabController, children: <Widget>[
          _buildFormSignUp(),
          _buildFormLogIn(),
          _buildFormForgotPassword(),
        ]),
      ),
    );
  }

  _buildFormSignUp() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200], spreadRadius: 1, blurRadius: 10)
              ],
            ),
            padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            margin: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail_outline),
                    labelText: "EMAIL",
                    border: InputBorder.none,
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                  cursorColor: Color(0xFFFF6969),
                  controller: signUpEmail,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.person_outline),
                      labelText: "USERNAME",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  controller: signUpUsername,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline),
                      labelText: "PASSWORD",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  obscureText: true,
                  controller: signUpPass,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: FlatButton(
              color: Color(0xFFFF6969),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onPressed: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "SIGN UP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'NeusaNextPro',
                          fontWeight: FontWeight.bold),
                    )),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child:
                          Icon(Icons.chevron_right, color: Color(0xFFFF6969)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Text(
              "By creating an account, you agree to our\nTerms of Service and Privacy Policy",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', color: Color(0xFF515C6F)))
        ],
      ),
    );
  }

  _buildFormLogIn() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200], spreadRadius: 1, blurRadius: 10)
              ],
            ),
            padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            margin: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.person_outline),
                      labelText: "USERNAME / EMAIL",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  controller: signUpUsername,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline),
                      labelText: "PASSWORD",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  obscureText: true,
                  controller: signUpPass,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: FlatButton(
              color: Color(0xFFFF6969),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/PageHome");
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("LOG IN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'NeusaNextPro',
                              fontWeight: FontWeight.bold)),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child:
                          Icon(Icons.chevron_right, color: Color(0xFFFF6969)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Text("Don’t have an account? \nSwipe right to create a new account.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', color: Color(0xFF515C6F)))
        ],
      ),
    );
  }

  _buildFormForgotPassword() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 50, right: 50),
            child: Text(
                "Enter the email address you used to create your account and we will email you a link to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    wordSpacing: 2,
                    fontFamily: 'NeusaNextPro',
                    color: Color(0xFF515C6F))),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200], spreadRadius: 1, blurRadius: 10)
              ],
            ),
            padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            margin: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.mail_outline),
                      labelText: "EMAIL",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  controller: signUpEmail,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: FlatButton(
              color: Color(0xFFFF6969),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onPressed: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "SEND MAIL",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'NeusaNextPro',
                          fontWeight: FontWeight.bold),
                    )),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child:
                          Icon(Icons.chevron_right, color: Color(0xFFFF6969)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
