// import 'package:sqflite/sqflite.dart' as sql;

// class DBHelper {
//   static Future<sql.Database> initialize() async {
//     var dbPath = await sql.getDatabasesPath();
//     return sql.openDatabase(dbPath + 'alarms.db', onCreate: (db, version) {
//       return db.execute(
//           'CREATE TABLE alarms (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,date TEXT, active INTEGER)');
//     }, version: 1);
//   }

//   static Future insert(String dateTime, int active) async {
//     final db = await initialize();
//     return db.insert('alarms', {'date': dateTime.toString(), 'active': active});
//   }

//   static Future update(int id, int active) async {
//     final db = await initialize();
//     await db.rawUpdate('UPDATE alarms SET active = $active,WHERE id = $id');
//   }

//   static Future<List<Map<String, Object?>>> getData() async {
//     final db = await initialize();
//     var data = await db.rawQuery('SELECT * FROM alarms');
//     return data;
//   }
// }
