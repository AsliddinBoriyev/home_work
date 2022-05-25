import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class HomePage extends StatefulWidget {
  static const id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/photos.png",
              ),
            ),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(570),
          child: Text(""),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 40),
          child: GNav(
            backgroundColor:Colors.black,
            color:Colors.white,
            activeColor:Colors.white,
            tabBackgroundColor:Colors.grey.shade800,
            gap:8,
            onTabChange:(index){
              print(index);
            },
            padding:EdgeInsets.all(16),
              tabs:const [
                GButton(
                  icon:Icons.home,
                  text:"Home",
                ),
                GButton(
                  icon:Icons.search,
                  text:"Search",
                ),
                GButton(
                  icon:Icons.chat,
                  text:"Message",
                ),
                GButton(
                  icon:Icons.image,
                  text:"Settings",
                )
              ]
          ),
        ),
      ),
    );
  }
}
