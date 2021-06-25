import 'package:flutter/material.dart';
import 'package:mono/driver/diger.dart';
import 'package:mono/driver/iletisim.dart';
import 'package:mono/driver/siparislerim.dart';
import 'package:mono/driver/yardim.dart';
import 'package:mono/driver/degerlendirme.dart';
import 'package:mono/driver/profil.dart';
import 'package:mono/driver/favoriler.dart';
import 'package:mono/driver/ayarlar.dart';
import 'package:mono/driver/hakkinda.dart';


class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:<Widget> [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Color(0xffd78cf2),
            child: Center(
              child: Column(
                children:<Widget> [
                  Container(
                    width: 100,
                    height: 100,
                    margin:EdgeInsets.only(top: 30,bottom: 10,
                    ) ,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("Başak Selin Ünsal",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white
                  ),
                  ),
                  Text("basakselin00@gmail.com",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading:Icon(Icons.person),
            title: Text("Profil",
            style: TextStyle(
              fontSize: 18.0
            ),
            ),
            onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return profil();
                  }),
                );
              },
          ),
          ListTile(
            leading:Icon(Icons.favorite),
            title: Text("Favoriler",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return favori();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.shopping_basket),
            title: Text("Siparislerim",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return siparislerim();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title: Text("Ayarlar",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return ayarlar();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.auto_awesome),
            title: Text("Hakkında",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return hakkinda();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.star),
            title: Text("Bizi Değerlendirin",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return degerlendir();
                }),
              );
            },
          ),

          ListTile(
            leading:Icon(Icons.devices_other),
            title: Text("Diğer",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return digerleri();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.help),
            title: Text("Yardım",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return Yardim();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.phone),
            title: Text("İletişim",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return iletisim();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
