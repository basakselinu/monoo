import 'package:flutter/material.dart';
import 'package:mono/mainpage/anasayfa.dart';



class signUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Color(0xffd78cf2),),
            onPressed: () {
              Navigator.of(context).pop();
            },
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
                backgroundImage: AssetImage("images/monoo.jpg"),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd78cf2),
                  hintText: " ",
                  labelText: "E-mail Adresi",
                  prefixIcon: Icon(Icons.mail),
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
                  hintText: " ",
                  labelText: "Kullanıcı Adı",
                  prefixIcon: Icon(Icons.person),
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
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd78cf2),
                  hintText: " ",
                  labelText: "Şifre",
                  prefixIcon: Icon(Icons.keyboard_return_outlined),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
              ), SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd78cf2),
                  hintText: " ",
                  labelText: "Şifre",
                  prefixIcon: Icon(Icons.keyboard_return_outlined),
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
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Text("Kayıt Ol",
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}