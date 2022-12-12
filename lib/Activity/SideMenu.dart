import 'package:flutter/material.dart';
import 'package:google_keep/Activity/Colors.dart';
import 'Archive.dart';
import 'Settings.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
               child:  Text("Google keep",style: TextStyle(color: white,fontSize: 25,fontWeight: FontWeight.bold),),

               
             ),
              Divider(
                color: white.withOpacity(0.3),
              ),
              SectionOne(),
              SizedBox(height: 5),
              SectionTwo(),
              SizedBox(height: 5),
              SectionSetting()


            ],
          ),
        ),

      ),
    );
  }



  Widget SectionOne(){
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.orangeAccent.withOpacity(0.3)),
            shape: MaterialStateProperty.all<
                RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)
                )
            )
        ),
        onPressed: (){},
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(
                Icons.lightbulb_outline,
                size: 25,
                color: white.withOpacity(0.5),

              ),
              SizedBox(width: 28),
              Text(
                "Notes",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget SectionTwo(){
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.3)),
            shape: MaterialStateProperty.all<
                RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)
                )
            )
        ),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Archive()));
        },
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(
                Icons.archive_outlined,
                size: 25,
                color: white.withOpacity(0.5),

              ),
              SizedBox(width: 28),
              Text(
                "Archive",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget SectionSetting(){
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.3)),
            shape: MaterialStateProperty.all<
                RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)
                )
            )
        ),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Settings()));
        },
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(
                Icons.settings,
                size: 25,
                color: white.withOpacity(0.5),

              ),
              SizedBox(width: 28),
              Text(
                "Settings",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
