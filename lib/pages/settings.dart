import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  static const String id ='settings_page';

  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(preferredSize: Size.fromHeight(100),
          child: Container(
            padding: EdgeInsets.only(right: 200),
            child: Text("Settings",style: TextStyle(fontSize: 40,color: Colors.black),),
          ),

        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(

          icon: const Icon(CupertinoIcons.search,size: 30,color: Colors.black,),
          onPressed: (){},
        ),
        actions: [
          Icon(CupertinoIcons.square_arrow_right,size: 35,color: Colors.black,),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50,right: 55),
           child:  Text("Saved media",style: TextStyle(fontSize: 25),),
          ),
          Container(
            margin: EdgeInsets.only(top: 35,right: 45),
            child:  Text("Notfilications",style: TextStyle(fontSize: 25),),
          ),
          Container(
            margin: EdgeInsets.only(top: 35,right: 120),
            child:  Text("Profile",style: TextStyle(fontSize: 25),),
          ),
          Container(
            margin: EdgeInsets.only(top: 35,left: 30),
            child:  Text("Privacy and security",style: TextStyle(fontSize: 25),),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,

        // tanlangan iconlar
        selectedIconTheme: const IconThemeData(size: 27),
        selectedItemColor: Colors.black,

        // tanlanmagan iconlar
        unselectedIconTheme: const IconThemeData(size: 24),
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,

        enableFeedback: true,

        //  bu telefon yon tomini bn turganda icon va yozubvini to'g'rlab beradi
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,

        // bu qaysi button bosilganini ko'rsatadi
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        // bu iconlar korinishi uchun
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gear_solid),
            label: "Settings",
          ),
        ],
      ),

    );
  }
}