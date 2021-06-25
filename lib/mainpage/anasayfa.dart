import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mono/driver/menu.dart';
import 'package:mono/mainpage/sayfadetay.dart';
import 'package:mono/mainpage/sepet.dart';

class anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          title: Text(
            "Mono",
            style: GoogleFonts.playfairDisplay(
              fontSize: 30.0,
              color: Colors.brown[900],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 30.0,
                color: Colors.black54,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return sepet();
                  }),
                );
              },
            ),
          ],
        ),
        drawer: menu(),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        spreadRadius: 1.0,
                        blurRadius: 15.0,
                      ),
                    ]),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        buildColumnAtTop("Yüzük", isSelected: true),
                        buildColumnAtTop("Kolye"),
                        buildColumnAtTop("Küpe"),
                        buildColumnAtTop("Bileklik")
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                              onLongPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return sayfadetay();
                                  }),
                                );
                              },
                              child: buildColumnWithRow("1", "5 Rhinestone Rings", "20")),
                          buildColumnWithRow("2", "Golden Rings", "25"),
                          buildColumnWithRow("3", "Moon Pearl Rings", "15"),
                          buildColumnWithRow("4", "Ice Chess Rings", "23"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildContainerBottom(String img, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 130,
            width: 250,
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                        height: 115,
                        width: 100,
                        child: Image.asset(
                          "images/taki$img.jpg",
                          fit: BoxFit.cover,
                        ))),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title),
                      Spacer(),
                      Text(
                        "\₺ $price",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column buildColumnAtTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Color(0xffd78cf2) : Colors.grey,
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: Color(0xffd78cf2),
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }

  Padding buildColumnWithRow(String img, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 400,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "images/yuzuk$img.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "₺ $price",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}


