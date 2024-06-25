import 'package:flutter/material.dart';

class PageSearch extends StatefulWidget {
  @override
  _PageSearchState createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> {
  TextEditingController searchWordController = TextEditingController();

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
          Text("Search",
              style: TextStyle(
                  color: Color(0xFF515C6F),
                  fontSize: 35,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NeusaNextPro')),
          SizedBox(height: 10),
          TextFormField(
            controller: searchWordController,
            onFieldSubmitted: (e) {
              Navigator.of(context).pushNamed('/PageSearchResult',
                  arguments: searchWordController.text.toString());
            },
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 0, bottom: 0, right: 30),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                fillColor: Color(0x20727C8E),
                filled: true,
                prefixIcon: Icon(Icons.search, color: Color(0x40515C6F)),
                hintStyle: TextStyle(
                    color: Color(0x40515C6F), fontFamily: 'NeusaNextPro'),
                hintText: "Search Something"),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("RECENTLY VIEWED",
                  style: TextStyle(
                      color: Color(0x50515C6F),
                      fontSize: 12,
                      fontFamily: 'NeusaNextPro')),
              Text("CLEAR",
                  style: TextStyle(
                      color: Color(0xFFFF6969),
                      fontSize: 12,
                      fontFamily: 'NeusaNextPro')),
            ],
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 10, bottom: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                buildViewCard(
                    "Red Cotton Scarf", "\$11.00", 'assets/images/atki.png'),
                buildViewCard("Bottle Green Backpack", "\$20.58",
                    'assets/images/canta.png'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("RECOMMENDED",
                  style: TextStyle(
                      color: Color(0x50515C6F),
                      fontSize: 12,
                      fontFamily: 'NeusaNextPro')),
              Text("REFRESH",
                  style: TextStyle(
                      color: Color(0xFFFF6969),
                      fontSize: 12,
                      fontFamily: 'NeusaNextPro')),
            ],
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            alignment: WrapAlignment.start,
            spacing: 10,
            runSpacing: 0,
            children: [
              "Denim Jeans",
              "Mini Skirt",
              "Jacket",
              "Accessories",
              "Sports Accessories",
              "Yoga Pants",
              "Eye Shadow"
            ].map((item) {
              return Chip(
                elevation: 0.5,
                labelPadding: EdgeInsets.only(left: 5, right: 5),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent)),
                backgroundColor: Colors.white,
                label: Text(item,
                    style: TextStyle(
                        color: Color(0xFF515C6F),
                        fontSize: 13,
                        fontFamily: 'NeusaNextPro')),
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  buildViewCard(String isim, String ucret, String resim) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: <Widget>[
          Image.asset(resim),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                isim,
                style: TextStyle(
                    color: Color(0xFF515C6F),
                    fontSize: 15,
                    fontFamily: 'NeusaNextPro'),
              ),
              Text(
                ucret,
                style: TextStyle(
                    color: Color(0xFF515C6F), fontFamily: 'NeusaNextPro'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PageSearchResult extends StatefulWidget {
  static String searchWord;

  @override
  _PageSearchResultState createState() => _PageSearchResultState();
}

class _PageSearchResultState extends State<PageSearchResult>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  TabController tabController;
  var tabList;
  List<SearchResultData> searchDataList;

  TextEditingController searchWordController;

  @override
  void initState() {
    super.initState();
    tabList = [
      Tab(
          child:
              Text("BEST MATCH", style: TextStyle(fontFamily: 'NeusaNextPro'))),
      Tab(
          child:
              Text("TOP RATED", style: TextStyle(fontFamily: 'NeusaNextPro'))),
      Tab(
          child: Text("PRICE LOW-HIGH",
              style: TextStyle(fontFamily: 'NeusaNextPro'))),
      Tab(
          child: Text("PRICE HIGH-LOW",
              style: TextStyle(fontFamily: 'NeusaNextPro'))),
    ];
    tabController = new TabController(length: tabList.length, vsync: this);

    searchDataList = [
      SearchResultData("V Neck Shirt - Pink", "assets/images/v_yaka_pembe.jpg",
          "\$24.99", "4.9"),
      SearchResultData("V Neck Shirt - Lime", "assets/images/v_yaka_yesil.jpg",
          "\$24.99", "4.8"),
      SearchResultData("Round Neck Shirt", "assets/images/mavi_tisort.jpg",
          "\$24.99", "4.5"),
      SearchResultData("V Neck Polo Shirt", "assets/images/mor_tisort.jpg",
          "\$24.99", "4.1"),
      SearchResultData("V Neck Shirt - Pink", "assets/images/v_yaka_pembe.jpg",
          "\$24.99", "4.9"),
      SearchResultData("V Neck Shirt - Lime", "assets/images/v_yaka_yesil.jpg",
          "\$24.99", "4.8"),
      SearchResultData("Round Neck Shirt", "assets/images/mavi_tisort.jpg",
          "\$24.99", "4.5"),
      SearchResultData("V Neck Polo Shirt", "assets/images/mor_tisort.jpg",
          "\$24.99", "4.1"),
      SearchResultData("V Neck Shirt - Pink", "assets/images/v_yaka_pembe.jpg",
          "\$24.99", "4.9"),
      SearchResultData("V Neck Shirt - Lime", "assets/images/v_yaka_yesil.jpg",
          "\$24.99", "4.8"),
      SearchResultData("Round Neck Shirt", "assets/images/mavi_tisort.jpg",
          "\$24.99", "4.5"),
      SearchResultData("V Neck Polo Shirt", "assets/images/mor_tisort.jpg",
          "\$24.99", "4.1"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    PageSearchResult.searchWord = ModalRoute.of(context).settings.arguments;
    searchWordController =
        TextEditingController(text: PageSearchResult.searchWord.toString());

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: TextFormField(
              controller: searchWordController,
              onFieldSubmitted: (e) {
                print(e.toString());
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 0, bottom: 0, right: 30),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  fillColor: Color(0x20727C8E),
                  filled: true,
                  prefixIcon: Icon(Icons.search, color: Color(0x40515C6F)),
                  hintStyle: TextStyle(
                      color: Color(0x40515C6F), fontFamily: 'NeusaNextPro'),
                  hintText: "Search Something"),
            )),
        titleSpacing: 0,
        leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Color(0xFFFF6969), size: 30),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.filter_list, color: Color(0xFF727C8E), size: 30),
              onPressed: () {
                _scaffoldKey.currentState.openEndDrawer();
              })
        ],
        bottom: TabBar(
            labelPadding: EdgeInsets.only(left: 15, right: 15),
            isScrollable: true,
            indicator: BoxDecoration(color: Colors.transparent),
            labelStyle: TextStyle(fontSize: 14),
            labelColor: Color(0xFFFF6969),
            unselectedLabelColor: Color(0x50727C8E),
            controller: tabController,
            tabs: tabList),
      ),
      body: Stack(
        overflow: Overflow.clip,
        alignment: Alignment.centerRight,
        children: <Widget>[
          GridView.builder(
              itemCount: searchDataList.length,
              padding: EdgeInsets.all(15),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.7),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 0),
                            spreadRadius: 0.2)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  padding: EdgeInsets.only(top: 15, left: 15, bottom: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Image.asset(
                              searchDataList.elementAt(index).image,
                              fit: BoxFit.contain)),
                      Text(searchDataList.elementAt(index).name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NeusaNextPro',
                              color: Color(0xFF515C6F),
                              fontSize: 15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(searchDataList.elementAt(index).price,
                              style: TextStyle(
                                  fontFamily: 'NeusaNextPro',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF515C6F))),

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
                                  Text(searchDataList.elementAt(index).star,
                                      style: TextStyle(
                                          fontFamily: 'NeusaNextPro',
                                          color: Colors.white)),
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
      endDrawer: Drawer(
        elevation: 10,
        child: SafeArea(child: _buildFilterMenu()),
      ),
    );
  }

  _buildFilterMenu() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("REFINE RESULTS",
                    style: TextStyle(
                        color: Color(0x60515C6F),
                        fontSize: 13,
                        fontFamily: 'NeusaNextPro')),
                Text("CLEAR",
                    style: TextStyle(
                        color: Color(0xFFFF6969),
                        fontSize: 13,
                        fontFamily: 'NeusaNextPro')),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              "View",
              "Category",
              "Condition",
              "Material",
              "Colour",
              "Brand",
              "Size",
              "Price Range"
            ].map((item) {
              return ListTile(
                title: Text(item,
                    style: TextStyle(
                        fontFamily: 'NeusaNextPro',
                        color: Color(0xFF515C6F),
                        fontSize: 15)),
                contentPadding: EdgeInsets.all(0),
                trailing: Icon(Icons.chevron_right, color:  Color(0x60515C6F)),
              );
            }).toList(),
          )),
          Container(
            padding: EdgeInsets.all(5),
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFFFF6969),
                  ),
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "APPLY FILTERS",
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
          )
        ],
      ),
    );
  }
}

class SearchResultData {
  String name, image, star, price;

  SearchResultData(this.name, this.image, this.price, this.star);
}
