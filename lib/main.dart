import 'package:floor_database_lesson/database/note_database.dart';
import 'package:floor_database_lesson/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FutureBuilder<NoteDatabsae>(
        future: $FloorNoteDatabsae.databaseBuilder('note.db').build(),
        builder: (context,data){
          if(data.hasData){
            Get.put(data.data.noteDao);
            return Home();
          }
          else if(data.hasError) {
            return Text('Error');
          }
          else
            return Text('Loading');
        },
      )

    );
  }
}
