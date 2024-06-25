import 'package:flutter/material.dart';

class PageCategories extends StatefulWidget {
  @override
  _PageCategoriesState createState() => _PageCategoriesState();
}

class _PageCategoriesState extends State<PageCategories> {
  List<mCategory> mCategoryList;
  List bannerList = ['assets/images/banner1.png', 'assets/images/banner2.png'];

  @override
  void initState() {
    super.initState();

    mCategoryList = new List();

    mCategoryList.add(mCategory("Apparel", "assets/images/apparel.png"));
    mCategoryList.add(mCategory("Beauty", "assets/images/beauty.png"));
    mCategoryList.add(mCategory("Shoes", "assets/images/shoes.png"));
    mCategoryList
        .add(mCategory("Electronics", "assets/images/electronics.png"));
    mCategoryList.add(mCategory("Furniture", "assets/images/furniture.png"));
    mCategoryList.add(mCategory("Home", "assets/images/home.png"));
    mCategoryList.add(mCategory("Statyonary", "assets/images/statyonary.png"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              IconButton(
                  icon:
                      Icon(Icons.chat_bubble_outline, color: Color(0xFF727C8E)),
                  onPressed: () {}),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Color(0xFFFF6969),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 20,
                width: 20,
                child: Text("5",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'NeusaNextPro')),
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              IconButton(
                  icon:
                      Icon(Icons.notifications_none, color: Color(0xFF727C8E)),
                  onPressed: () {}),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Color(0xFFFF6969),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 20,
                width: 20,
                child: Text("10",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'NeusaNextPro')),
              )
            ],
          ),
          SizedBox(width: 15)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
        children: <Widget>[
          Hero(
              tag: 'title',
              child: Text("Categories",
                  style: TextStyle(
                      color: Color(0xFF515C6F),
                      fontSize: 35,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NeusaNextPro'))),
          SizedBox(height: 30),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  ClipRRect(
                      child: Image.asset(
                        mCategoryList[0].iconName,
                        height: 70,
                        width: 70,
                      ),
                      borderRadius: BorderRadius.circular(100)),
                  SizedBox(height: 10),
                  Text(mCategoryList[0].name,
                      style: TextStyle(
                          color: Color(0xFF515C6F),
                          fontSize: 17,
                          fontFamily: 'NeusaNextPro'))
                ],
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                      child: Image.asset(
                        mCategoryList[1].iconName,
                        height: 70,
                        width: 70,
                      ),
                      borderRadius: BorderRadius.circular(100)),
                  SizedBox(height: 10),
                  Text(mCategoryList[1].name,
                      style: TextStyle(
                          color: Color(0xFF515C6F),
                          fontSize: 17,
                          fontFamily: 'NeusaNextPro'))
                ],
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                      child: Image.asset(
                        mCategoryList[2].iconName,
                        height: 70,
                        width: 70,
                      ),
                      borderRadius: BorderRadius.circular(100)),
                  SizedBox(height: 10),
                  Text(mCategoryList[2].name,
                      style: TextStyle(
                          color: Color(0xFF515C6F),
                          fontSize: 17,
                          fontFamily: 'NeusaNextPro'))
                ],
              ),
              InkWell(
                onTap: () => Navigator.of(context)
                    .pushNamed("/PageAllCategories", arguments: mCategoryList),
                child: Column(
                  children: <Widget>[
                    Hero(
                        tag: 'rightIcon',
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0))
                              ]),
                          child: Icon(Icons.chevron_right,
                              color: Color(0xFFFF6969), size: 30),
                        )),
                    SizedBox(height: 10),
                    Text("See All",
                        style: TextStyle(
                            color: Color(0xFF515C6F),
                            fontSize: 17,
                            fontFamily: 'NeusaNextPro')),
                  ],
                ),
              ),
            ],
          )),
          SizedBox(height: 30),
          Text("Latest",
              style: TextStyle(
                  color: Color(0xFF515C6F),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NeusaNextPro')),
          Container(
            width: double.infinity,
            height: 200,
            child: PageView.builder(
                itemCount: bannerList.length,
                pageSnapping: true,
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(bannerList[i]),
                            fit: BoxFit.cover)),
                    width: MediaQuery.of(context).size.width,
                    height: double.infinity,
                    child: Container(
                      width: 120,
                      height: 35,
                      child: FlatButton(
                        padding: EdgeInsets.all(0),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.only(left: 7, top: 5, bottom: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                  child: Text(
                                "SEE MORE",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF727C8E),
                                  fontFamily: 'NeusaNextPro',
                                ),
                              )),
                              CircleAvatar(
                                backgroundColor: Color(0xFFFF6969),
                                child: Icon(Icons.chevron_right,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                buildViewCard(
                    "Ankle Boots", "\$49.99", 'assets/images/ayakkabi.png'),
                buildViewCard("Backpack", "\$20.58", 'assets/images/canta.png'),
                buildViewCard("Red Scarf", "\$11.00", 'assets/images/atki.png'),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildViewCard(String isim, String ucret, String resim) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey[200], blurRadius: 1, spreadRadius: 1)
          ]),
      width: (MediaQuery.of(context).size.width - 80) / 3,
      child: Column(
        children: <Widget>[
          Image.asset(resim),
          Text(
            isim,
            style: TextStyle(
              color: Color(0xFF727C8E),
              fontFamily: 'NeusaNextPro',
            ),
          ),
          Text(
            ucret,
            style: TextStyle(
                color: Color(0xFF727C8E),
                fontFamily: 'NeusaNextPro',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class mCategory {
  String name;
  String iconName;

  mCategory(this.name, this.iconName);
}

class PageAllCategories extends StatefulWidget {
  static List<mCategory> mCategoryList;

  @override
  _PageAllCategoriesState createState() => _PageAllCategoriesState();
}

class _PageAllCategoriesState extends State<PageAllCategories> {
  int selectedCategory = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PageAllCategories.mCategoryList = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: InkWell(
                  child: Hero(
                      tag: 'rightIcon',
                      child: Icon(Icons.close, color: Color(0xFFFF6969))),
                  onTap: () {
                    Navigator.of(context).pop();
                  }),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              margin:  EdgeInsets.only(left: 30, top: 10,bottom: 0),
              width: double.infinity,
              child: Hero(
                  tag: 'title',
                  child: Text("All Categories",
                      style: TextStyle(
                          color: Color(0xFF515C6F),
                          fontSize: 35,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NeusaNextPro'))),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height - 170,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 90,
                    child: ListView.builder(
                        itemCount: PageAllCategories.mCategoryList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedCategory = index;
                              });
                            },
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20),
                                ClipRRect(
                                    child: Image.asset(
                                      PageAllCategories
                                          .mCategoryList[index].iconName,
                                      height: 50,
                                      width: 50,
                                    ),
                                    borderRadius: BorderRadius.circular(100)),
                                SizedBox(height: 10),
                                Text(PageAllCategories.mCategoryList[index].name,
                                    style: TextStyle(
                                        color: selectedCategory == index
                                            ? Color(0xFF515C6F)
                                            : Color(0x50515C6F),
                                        fontWeight: selectedCategory == index
                                            ? FontWeight.w600
                                            : FontWeight.w200,
                                        fontSize: 17,
                                        fontFamily: 'NeusaNextPro')),
                                SizedBox(height: 20),
                              ],
                            ),
                          );
                        }),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 130,
                    child: ListView(
                      padding: EdgeInsets.all(15),
                      children: <Widget>[
                        Text("MEN'S APPAREL",
                            style: TextStyle(
                                color: Color(0x50515C6F),
                                fontSize: 12,
                                fontFamily: 'NeusaNextPro')),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [BoxShadow(color: Colors.grey[300])]),
                          child: Column(
                            children: [
                              "T-shirts",
                              "Shirts",
                              "Pants & Jeans",
                              "Socks & Ties",
                              "Underwear",
                              "Jackets",
                              "Coats",
                              "Sweaters"
                            ].map((item) {
                              return ListTile(
                                contentPadding:
                                    EdgeInsets.only(left: 15, right: 10,top: 0,bottom: 0),
                                title: Text(item,
                                    style: TextStyle(
                                        color: Color(0xFF515C6F),
                                        fontSize: 15,
                                        fontFamily: 'NeusaNextPro')),
                                trailing: Padding(padding: EdgeInsets.only(top: 15,bottom: 15),child: CircleAvatar(
                                    backgroundColor: Color(0x20727C8E),
                                    child: Icon(Icons.chevron_right,
                                        color: Color(0xFF727C8E)))),
                              );
                            }).toList(),
                          ),
                        ),
                        Divider(
                          height: 50,
                          color: Color(0x80727C8E),
                        ),
                        Text("WOMEN'S APPAREL",
                            style: TextStyle(
                                color: Color(0x50515C6F),
                                fontSize: 12,
                                fontFamily: 'NeusaNextPro')),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [BoxShadow(color: Colors.grey[300])]),
                          child: Column(
                            children: [
                              "T-shirts",
                              "Shirts",
                              "Pants & Jeans",
                              "Socks & Ties",
                              "Underwear",
                              "Jackets",
                              "Coats",
                              "Sweaters"
                            ].map((item) {
                              return ListTile(
                                contentPadding:
                                EdgeInsets.only(left: 15, right: 10,top: 0,bottom: 0),
                                title: Text(item,
                                    style: TextStyle(
                                        color: Color(0xFF515C6F),
                                        fontSize: 15,
                                        fontFamily: 'NeusaNextPro')),
                                trailing: Padding(padding: EdgeInsets.only(top: 15,bottom: 15),child: CircleAvatar(
                                    backgroundColor: Color(0x20727C8E),
                                    child: Icon(Icons.chevron_right,
                                        color: Color(0xFF727C8E)))),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
