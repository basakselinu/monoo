import 'package:flutter/material.dart';

class sayfadetay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/yuzuk1.jpg",
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          IconButton(
            padding: EdgeInsets.only(left: 20, right: 40),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xffd78cf2),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
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
                  Expanded(
                      child:SingleChildScrollView(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget> [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:<Widget> [
                                  Text("5 Rhinestone Rings",
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                  ),
                                  Text("\₺20",
                                  style: TextStyle(
                                    fontSize: 28,fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Beden",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text("Standart",style: TextStyle(fontSize: 16,
                                        ),
                                        ),
                                      ],
                                    ),
                                ),
                                Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:<Widget> [
                                  Text("Adet",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("1",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                  ),
                                ],
                                ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              thickness: 1.5,
                            ),
                            ListTile(
                              leading: Text("Detay",
                              style: TextStyle(fontSize: 12),
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.add,
                                color: Colors.black,
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),
                      )
              ),
                  Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          child: Icon(
                            Icons.favorite_border,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle,
                          ),
                        ),
                        FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_bag_outlined,
                              color: Colors.white),
                          label: Text(
                            "Sepete Ekle",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 1)),
                          color: Color(0xffd78cf2),
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 6,
                              vertical: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
