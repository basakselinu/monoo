import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mono/driver/takinasiltasarlanir.dart';
import 'package:mono/model/API.dart';
import 'package:mono/screens/stoklist.dart';

import 'grafik.dart';

class digerleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
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
          "Diğer",
          style: GoogleFonts.playfairDisplay(
            fontSize: 30.0,
            color: Colors.brown[900],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.devices_other,
                  color: Color(0xffd78cf2),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1.5,
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading:Icon(Icons.add_chart),
              title: Text("Ziyaretçi İstatistik Grafiği",
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return BarChartSample2();
                  }),
                );
              },
            ),
            SizedBox(height: 10.0),
            ListTile(
              leading:Icon(Icons.cloud_queue_sharp),
              title: Text("Takı Nasıl Tasarlanır",
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return FileDownloadView();
                  }),
                );
              },
            ),
            SizedBox(height: 10.0),
            ListTile(
              leading:Icon(Icons.book_outlined),
              title: Text("Kullanıcı Listesi",
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return api();
                  }),
                );
              },
            ),
            SizedBox(height: 10.0),
            ListTile(
              leading:Icon(Icons.add_shopping_cart),
              title: Text("Stok Listesi",
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return StokList();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}
