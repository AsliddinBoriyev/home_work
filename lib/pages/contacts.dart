import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  static const String id ='contact_page';

  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(preferredSize: Size.fromHeight(100),
          child: Container(
            padding: EdgeInsets.only(right: 200),
            child: Text("Contacts",style: TextStyle(fontSize: 40,color: Colors.black,),),
          ),

        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(

          icon: const Icon(CupertinoIcons.search,size: 30,color: Colors.black,),
          onPressed: (){},
        ),
        actions: [
          Icon(CupertinoIcons.add,size: 35,color: Colors.black,),
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