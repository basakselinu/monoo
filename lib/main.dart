import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login/login.dart';


void main()=>
  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: ilkGiris());
  }
}

class ilkGiris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
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
                   return login();
                 }
              ));
        },
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              size: 12,
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              "Devam Et ",
              style: TextStyle(fontSize: 12),
            ),
            Icon(
              Icons.ac_unit,
              size: 12,
            ),
          ],
        ),
        backgroundColor: Color(0xffd78cf2),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("images/monoo.jpg"),
              backgroundColor: Colors.white,
            ),
            Text("Mono",
              /* style: TextStyle(
                    fontFamily: "GreatVibes",*/
              style: GoogleFonts.greatVibes(
                fontSize: 50,
                color: Colors.brown[900],
              ),
            ),
            Text("Always Your Store",
              style: GoogleFonts.caveat(
                fontSize: 25,
                color: Color(0xffd78cf2),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

