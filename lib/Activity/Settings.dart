import 'package:flutter/material.dart';
import 'package:google_keep/Activity/Colors.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text("Settings"),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              children: [
                Text("Sync",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                Spacer(),
                Switch.adaptive(value: value, onChanged: (switchValue)=>
                setState(() {
                  this.value = switchValue;
                })
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
