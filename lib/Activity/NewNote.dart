import 'package:flutter/material.dart';
import 'Colors.dart';

class NewNote extends StatefulWidget {
  const NewNote({Key? key}) : super(key: key);

  @override
  State<NewNote> createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: bgColor,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.save))
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            TextField(
              cursorColor: white,
              style: TextStyle(
                  fontSize: 25, color: Colors.white
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "Title",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withOpacity(0.5)
                  )
              ),
            ),
            Container(
              height: 300,
              child: TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.multiline,
                minLines: 50,
                maxLines: null,
                style: TextStyle(fontSize: 16, color: Colors.white,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Note",
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.7),
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
