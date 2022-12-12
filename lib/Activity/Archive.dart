import 'package:flutter/material.dart';
import 'package:google_keep/Activity/Home.dart';
import 'package:google_keep/Activity/NewNote.dart';
import 'package:google_keep/Activity/SearchView.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'Colors.dart';
import 'SideMenu.dart';
import 'NoteView.dart';
import 'NewNote.dart';
import 'SearchView.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';

class Archive extends StatefulWidget {
  const Archive({Key? key}) : super(key: key);

  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  String note1 = "This is note This is note This is NOte  This is note This is note This is NOteThis is This is NOteThis is note This is note This is NOteThis is note This is note This is NOteThis is NOteThis is note This is note This is NOteThis is note This is note This is NOte note This is note This is NOteThis is note This is note This is NOteThis is note This is note This is NOteThis is note This is note This is NOte";
  String note2 = "This is note This is note This is NOteThis is note This is note This is NOteThis is note This is note This is NOte";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>NewNote()));
      },
        child: Icon(Icons.add,size: 40,color: cardColor,),
      ),
      key: _drawerkey,
      drawer: SideMenu(),
      endDrawerEnableOpenDragGesture: true,
      backgroundColor: bgColor,
      body: SafeArea(

        child: SingleChildScrollView(

          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: cardColor,
                    boxShadow: [
                      BoxShadow(
                          color: black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              _drawerkey.currentState!.openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchView()));
                            },
                            child: Container(
                              height: 55,
                              width: 180,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Search Your Notes Here",
                                    style: TextStyle(
                                        color: white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  overlayColor: MaterialStateColor.resolveWith(
                                          (states) => white.withOpacity(0.1)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(50.0)))),
                              child: Icon(
                                Icons.grid_view,
                                color: white,
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                noteSection(),
                noteList(),

                // Container(
                //     height: MediaQuery.of(context).size.height,
                //     width: MediaQuery.of(context).size.width,
                //     padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                //     child: StaggeredGridView.countBuilder(
                //       physics: NeverScrollableScrollPhysics(),
                //       shrinkWrap: true,
                //       mainAxisSpacing: 12,
                //       crossAxisSpacing: 12,
                //       crossAxisCount: 4,
                //       itemCount: 10,
                //       staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                //       itemBuilder: (context, index) => Container(
                //         padding: EdgeInsets.all(10),
                //         decoration: BoxDecoration(
                //           color: index.isEven ? Colors.green[900]:Colors.blue[900],
                //           borderRadius: BorderRadius.circular(8),
                //           border: Border.all(color: Colors.green.withOpacity(0.8)),
                //         ),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //
                //             Text("Heading",style: TextStyle(
                //                 color: white,
                //                 fontSize: 20
                //             ),),
                //             SizedBox(height: 8),
                //             Text(
                //                 index.isEven ? note1.length>250?"${note1.substring(0,250)}...":note1:note2,style: TextStyle(
                //                 color: white
                //             ))
                //           ],
                //         ),
                //       ),
                //     )),


              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget noteSection(){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "ALL",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: white.withOpacity(0.5)),
                )
              ],
            ),
          ),

          Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              crossAxisCount: 4,
              itemCount: 10,
              staggeredTileBuilder: (index) => StaggeredTile.fit(2),
              itemBuilder: (context, index) => InkWell(
                onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>NoteView()));},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: white.withOpacity(0.8)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Heading",style: TextStyle(
                          color: white,
                          fontSize: 20
                      ),),
                      SizedBox(height: 8),
                      Text(
                          index.isEven ? note1.length>250?"${note1.substring(0,250)}...":note1:note2,style: TextStyle(
                          color: white
                      ))
                    ],
                  ),
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
  Widget noteList() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "LIST",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: white.withOpacity(0.5)),
                )
              ],
            ),
          ),

          Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) =>
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: white.withOpacity(0.8)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Heading", style: TextStyle(
                            color: white,
                            fontSize: 20
                        ),),
                        SizedBox(height: 8),
                        Text(
                            index.isEven ? note1.length > 250 ? "${note1
                                .substring(0, 250)}..." : note1 : note2,
                            style: TextStyle(
                                color: white
                            ))
                      ],
                    ),
                  ),
            ),

          ),
        ],
      ),
    );
  }
}
