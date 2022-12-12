import 'package:flutter/material.dart';
import 'package:google_keep/Activity/Colors.dart';
import 'package:google_keep/Activity/Home.dart';


class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2)
            ),
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                }, icon: Icon(Icons.arrow_back_sharp,color: white,)),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintText: "Search Your Notes",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 14)

                    )
                    ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
