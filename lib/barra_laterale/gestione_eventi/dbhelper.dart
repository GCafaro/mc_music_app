import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'evento.dart';

class DbHelper {
  Future<Database> initializeDb() async {
    String path = await getDatabasesPath();

    return openDatabase(join(path, "dbevento.db"),
        onCreate: (db, version) async {
      await db.execute("""
        CREATE TABLE Evento(id INTEGER PRIMARY KEY AUTOINCREMENT, titolo TEXT NOT NULL,descrizione TEXT NOT NULL)
      """);
    }, version: 1);
  }

  Future<List<Evento>> getEvento() async {
    final db = await initializeDb();
    final List<Map<String, dynamic>> results = await db.query("Evento");
    return results.map((e) => Evento.fromMap(e)).toList();
  }

  Future<int> insertEvento(Evento evento) async {
    final Database db = await initializeDb();
    final id = await db.insert('Evento', evento.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  Future<int> removeEvento(int id) async {
    final Database db = await initializeDb();
    int idRemoved = await db.delete("Evento", where: "id = ?", whereArgs: [id]);
    return idRemoved;
  }
}
