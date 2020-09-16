

 import 'package:floor_database_lesson/database/note_table.dart';
import 'package:floor_database_lesson/database/notedao.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddScreen extends StatelessWidget {
  TextEditingController title = TextEditingController();
  TextEditingController message = TextEditingController();
   @override
   Widget build(BuildContext context) {
     final NoteDao noteDao = Get.find();
     return Scaffold(
       appBar: AppBar(
         title: Text('Add Note'),
       ),
       body: Container(
         margin: EdgeInsets.all(15),
         child: Column(
           children: [
             TextField(
               controller: title,
               decoration: InputDecoration(
                 hintText: 'title',
                 border: OutlineInputBorder()
               ),

             ),
             SizedBox(
               height: 10,
             ),
             TextField(
               controller: message,
               decoration: InputDecoration(
                 hintText: 'message',
                 border: OutlineInputBorder()
               ),

             ),
             RaisedButton(
               color: Colors.blue,
               textColor: Colors.white,
               child: Text('Add Note'),
               onPressed: (){
                  noteDao.addNote(Note(title.text,message.text));
                  Get.back();
               },
             )
           ],
         ),
       ),
     );
   }
 }
