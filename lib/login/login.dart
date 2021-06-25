import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mono/login/signup.dart';
import 'package:mono/mainpage/anasayfa.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("images/monoo.jpg"),
                  backgroundColor: Colors.white,
                ),
                Text(
                  "Mono",
                  style: GoogleFonts.greatVibes(
                    fontSize: 45,
                    color: Colors.brown[900],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 75.0),
                  color: Color(0xffd78cf2),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            hintText: " ",
                            labelText: "e-posta veya kullanıcı adı",
                            prefixIcon: Icon(Icons.mail),
                            labelStyle: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black54,
                            ),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 75.0),
                  color: Color(0xffd78cf2),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: " ",
                            labelText: " Şifre",
                            prefixIcon: Icon(Icons.keyboard_return_outlined),
                            labelStyle: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black54,
                            ),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                MaterialButton(
                  minWidth: (100.0),
                  height: 45,
                  onPressed: () {
                    Navigator.push(context,
                        PageRouteBuilder(
                            transitionDuration: Duration(seconds: 2),
                            transitionsBuilder:(BuildContext context,Animation<double> animation,Animation<double> secanimation,Widget child){

                              animation=CurvedAnimation(parent: animation, curve: Curves.elasticInOut);

                              return ScaleTransition(
                                alignment:Alignment.topCenter ,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder:(BuildContext context,Animation<double> animation,Animation<double> secanimation){
                              return anasayfa();
                            }
                        ));
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.brown[900]),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    "Giriş Yap",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Hesabın Yok Mu ?",
                      style:
                          TextStyle(color: Colors.brown[900], fontSize: 10.0),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return signUp();
                          }),
                        );
                      },
                      child: Text(
                        "Kayıt Ol",
                        style: TextStyle(
                            color: Color(0xffd78cf2),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
