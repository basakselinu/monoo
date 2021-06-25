import 'package:mono/model/stok.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class DbHelper {
  static final DbHelper _dbHelper = DbHelper._internal();

  String tblStok = "stok";
  String colId = "id";
  String colTitle = "title";
  String colDescription = "description";
  String colPriority = "priority";
  String colDate = "date";

  DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  Future<Database> initializeDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + "stoks.db";
    var dbStoks = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbStoks;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE $tblStok($colId INTEGER PRIMARY KEY, $colTitle TEXT," +
            "$colDescription TEXT, $colPriority INTEGER, $colDate TEXT" +
            ")");
  }

  Future<int> insertStok(Stok stok) async {
    Database db = await this.db;
    var result = await db.insert(tblStok, stok.toMap());
    return result;
  }

  Future<List> getStoks() async {
    List<Stok> stokList = [];
    Database db = await this.db;
    var result =
    await db.rawQuery("SELECT * FROM $tblStok ORDER BY $colPriority ASC");
    result.forEach((element) {
      stokList.add(Stok.fromObject(element));
    });
    return stokList;
  }

  Future<int> getCount() async {
    Database db = await this.db;
    var result = Sqflite.firstIntValue(
        await db.rawQuery("SELECT COUNT(*) FROM $tblStok"));

    return result;
  }

  Future<int> updateStok(Stok stok) async {
    Database db = await this.db;
    var result = await db.update(tblStok, stok.toMap(),
        where: "$colId = ?", whereArgs: [stok.id]);
    return result;
  }

  Future<int> deleteStok(int id) async {
    Database db = await this.db;
    var result = await db.delete(tblStok, where: "$colId = ?", whereArgs: [id]);
    return result;
  }
}