import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mono/model/stok.dart';
import 'package:mono/screens/stokdetail.dart';
import 'package:mono/utils/dbhelper.dart';


class StokList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StokListState();
  }
}

class StokListState extends State {
  DbHelper helper = DbHelper();
  List<Stok> stoks;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (stoks == null) {
      stoks = [];
      getData();
    }
    return Scaffold(
        body: stokListItems(),
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
            "Stok Listesi",
            style: GoogleFonts.playfairDisplay(
              fontSize: 20.0,
              color: Colors.brown[900],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigateToDetail(Stok("", 3, ""));
          },
          tooltip: 'Yeni Stok Ekle',
          child: Icon(Icons.add),
          backgroundColor: Color(0xffd78cf2),
        ));
  }

  ListView stokListItems() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) => Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: getColor(this.stoks[position].priority),
                child: Text(
                  this.stoks[position].id.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(this.stoks[position].title),
              subtitle: Text(this.stoks[position].description),
              onTap: () {
                navigateToDetail(this.stoks[position]);
              },
            )));
  }

  void navigateToDetail(Stok stok) async {
    bool result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => StokDetail(stok)));
    if (result == true) {
      getData();
    }
  }

  void getData() {
    final stoksFuture = helper.getStoks();
    stoksFuture.then((result) => {
      setState(() {
        stoks = result;
        count = stoks.length;
      })
    });
  }

  Color getColor(int priority) {
    switch (priority) {
      case 1:
        return Color(0xffd78cf2);
      case 2:
        return Color(0xffd78cf2);
      case 3:
        return Color(0xffd78cf2);
      default:
        return Color(0xffd78cf2);
    }
  }
}