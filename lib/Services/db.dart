import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// import 'com.tekartik.sqflite.SqflitePlugin';

class NotesDb{
  static final NotesDb instance = NotesDb._init();
  static Database? _database;
  NotesDb._init();

  Future<Database?> get database async{
    if(_database!=null) return _database;
    _database = await _initilizeDB('Notes.db');
    return _database;
  }
  Future<Database> _initilizeDB(String filepath) async {
    final dbPath = await getDatabasesPath();
    final path = join( dbPath , filepath);
    
    return await openDatabase(path,version: 1,onCreate:_createDB);

  }
  Future _createDB(Database db,int version) async{
    await db.execute('''
    CREATE TABLE Notes(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      pin BOOLEAN NOT NULL,
      title TEXT NOT NULL,
      content TEXT NOT NULL,
      createdTime TEXT NOT NULL,
    )
    ''');
  }
  Future<bool?> InsertEntry() async{
    final db = await instance.database;
    await db!.insert("Notes", {"pin" : false , "title" : "THIS IS MY TITLE" , "content" : "THIS IS MY NOTE CONTENT" , "createdTime" : "26 Jan 2018"});
    return true;
  }

  Future<String> readAllNotes() async{
    final db = await instance.database;
    final sort = 'createdTime ASC';
    final query_result = await db!.query("Notes");
    print(query_result);
    return "Sucessful";
}
  Future<String?> readOneNote(int id) async{
    final db = await instance.database;
    final map = await db!.query("Notes",
    columns: ["title"],
    where: 'id=?',
    whereArgs: [id]);

}

}