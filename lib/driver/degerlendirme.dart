import 'package:flutter/material.dart';
import 'package:mono/driver/vote.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mono/mainpage/anasayfa.dart';

class degerlendir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Rating Control", home: RatingsPage());
  }
}

class RatingsPage extends StatefulWidget {
  @override
  _RatingsPage createState() => _RatingsPage();
}

class _RatingsPage extends State<RatingsPage> {
  int _rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
            backgroundColor: Color(0xffd78cf2),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return anasayfa();
                }),
              );
            },
          ),
            title: Text("Bizi Değerlendirin",
            style: GoogleFonts.playfairDisplay(),
            ),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Rating((rating) {
                setState(() {
                  _rating = rating;
                });
              }, 5),
              SizedBox(
                  height: 44,
                  child: (_rating != null && _rating != 0)
                      ? Text(" $_rating yıldız verdiniz",
                          style: TextStyle(fontSize: 18),)
                      : SizedBox.shrink())
            ],
          ),
        ));
  }
}
