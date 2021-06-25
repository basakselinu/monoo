import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class sepet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Color(0xffd78cf2),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Sepetim",
            style: GoogleFonts.playfairDisplay(
              fontSize: 20.0,
              color: Colors.brown[900],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              IconButton(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 24.0,
                  color: Colors.brown[900],
                ),
              ),
              Text(
                "Sepetiniz Boş",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xffd78cf2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

