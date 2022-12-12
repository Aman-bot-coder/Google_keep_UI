import 'package:flutter/material.dart';
import 'package:google_keep/Activity/Colors.dart';
import 'package:google_keep/Activity/EditNoteView.dart';
import 'EditNoteView.dart';

class NoteView extends StatefulWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  String note1 = "This is note This is note This is NOte  This is note This is note This is NOteThis is This is NOteThis is note This is note This is NOteThis is note This is note This is NOteThis is NOteThis is note This is note This is NOteThis is note This is note This is NOte note This is note This is NOteThis is note This is note This is NOteThis is note This is note This is NOteThis is note This is note This is NOte";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(
              Icons.push_pin)),
          IconButton(onPressed: (){}, icon: Icon(
              Icons.archive_outlined)),
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>EditNoteView()));
          }, icon: Icon(
              Icons.edit))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Heading", style: TextStyle(
                color: white,
                fontSize: 20
            ),),
            SizedBox(height: 10,),
            Text(note1,style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
