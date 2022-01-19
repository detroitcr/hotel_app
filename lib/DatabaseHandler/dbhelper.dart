import 'dart:io' as io;

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static final DbHelper _singleton = DbHelper._internal();

  factory DbHelper() {
    return _singleton;
  }

  DbHelper._internal();
  late Database _db;

  //Database Name
  static const String DB_Name = 'hotel.db';

  //Table Name

  static const String Table_User = 'user';
  static const int Version = 1;
  static const String C_UserName = 'username';
  static const String C_Email = 'email';
  static const String C_Password = 'password';

// Create DataBase Functions

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }

    _db = await initDb();

    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    //Create Table
    await db.execute("CREATE TABLE $Table_User("
        "$C_UserName TEXT,"
        "$C_Email TEXT,"
        "$C_Password TEXT,"
        "PRIMARY KEY ($C_UserName)"
        ")");
  }
}
