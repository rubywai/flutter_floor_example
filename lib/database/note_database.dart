
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

import 'note_table.dart';
import 'notedao.dart';

part 'note_database.g.dart';
@Database(version: 1,entities: [Note])
abstract class NoteDatabsae extends FloorDatabase{
    NoteDao get noteDao;
}