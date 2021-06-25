import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xffd78cf2),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),

          title: Text(
            "Profil",
            style: GoogleFonts.playfairDisplay(
              fontSize: 30.0,
              color: Colors.brown[900],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/profil.jpeg"),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd78cf2),
                  labelText: "E-mail Adresi",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "basakselin00@gmail.com ",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  prefixIcon: Icon(Icons.mail_outline_outlined),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd78cf2),
                  labelText: "Adı",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Başak Selin ",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd78cf2),
                  labelText: "Soyadı",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Ünsal",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd78cf2),
                  labelText: "Cep Telefonu",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "0505 689 3716 ",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  prefixIcon: Icon(Icons.phone),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd78cf2),
                  labelText: "Doğum Tarihi",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "04.06.2000 ",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  prefixIcon: Icon(Icons.calendar_today_outlined),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                minWidth: (100.0),
                height: 45,

                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown[900]),
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Text("Güncelle",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
