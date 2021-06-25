import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mono/model/stok.dart';
import 'package:mono/utils/dbhelper.dart';

final List<String> choices = const <String>[menuSave, menuDelete];

const menuSave = "Stok ekle";
const menuDelete = "Stok Sil";

DbHelper helper = DbHelper();

class StokDetail extends StatefulWidget {
  final Stok stok;

  StokDetail(this.stok);

  @override
  State<StatefulWidget> createState() {
    return StokDetailState(stok);
  }
}

class StokDetailState extends State {
  Stok stok;

  StokDetailState(this.stok);

  final _priorities = ["High", "Medium", "Low"];
  String _priority = "Low";
  final _formDistance = 5.0;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = stok.title;
    descController.text = stok.description;
    var textStyle = Theme.of(context).textTheme.caption;
    var title = stok.title == "" ? "Yeni Stok" : stok.title;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
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
            "Stok Listesi",
            style: GoogleFonts.playfairDisplay(
              fontSize: 20.0,
              color: Colors.brown[900],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: _formDistance, bottom: _formDistance),
                child: TextField(
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Ürün Adı",
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)))),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: _formDistance, bottom: _formDistance),
                child: TextField(
                    controller: descController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Ürün Kodu",
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)))),
              ),
              DropdownButton<String>(
                value: this._priorities[this.stok.priority - 1],
                items: _priorities.map((String str) {
                  return DropdownMenuItem<String>(
                    value: str,
                    child: Text(str),
                  );
                }).toList(),
                onChanged: (String str) {
                  updatePriority(str);
                },
              ),
              ElevatedButton(
                  onPressed: save,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffd78cf2),
                    onPrimary: Colors.white,
                  ),
                  child: Text(menuSave)),
              SizedBox(height: 10.0),
              ElevatedButton(
                  onPressed: delete,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffd78cf2),
                    onPrimary: Colors.white,
                  ),
                  child: Text(menuDelete)),
            ],
          ),
        ));
  }

  void updatePriority(String value) {
    int priority = 0;
    switch (value) {
      case "High":
        priority = 1;
        break;
      case "Medium":
        priority = 2;
        break;
      case "Low":
        priority = 3;
        break;
      default:
    }
    setState(() {
      this.stok.priority = priority;
    });
  }

  void select(String value) async {
    switch (value) {
      case menuSave:
        save();
        break;
      case menuDelete:
        delete();
        break;
      default:
    }
  }

  void delete() async {
    Navigator.pop(context, true);
    if (stok.id == null) {
      return;
    }
    int result;
    result = await helper.deleteStok(stok.id);
    if (result != 0) {
      AlertDialog alertDialog = AlertDialog(
        title: Text(
          "Stok Sil",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xffd78cf2),
          ),
        ),
        content: Text(
          "Stok Silindi",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      );
      showDialog(context: context, builder: (_) => alertDialog);
    }
  }

  void save() {
    stok.title = titleController.text;
    stok.description = descController.text;
    stok.date = new DateFormat.yMd().format(DateTime.now());
    if (stok.id != null) {
      helper.updateStok(stok);
    } else {
      helper.insertStok(stok);
    }
    Navigator.pop(context, true);
    showAlert(stok.id != null);
  }

  void showAlert(bool isUpdate) {
    AlertDialog alertDialog;
    if (isUpdate) {
      alertDialog = AlertDialog(
        title: Text(
          "Stok Güncelle",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xffd78cf2),
          ),
        ),
        content: Text(
          "Stok Güncellendi",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      );
    } else {
      alertDialog = AlertDialog(
        title: Text(
          "Stok Ekle",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xffd78cf2),
          ),
        ),
        content: Text(
          "Stok Eklendi",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      );
    }
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
