import 'package:flutter/material.dart';
class HomePage1 extends StatefulWidget {
  static const id="home_page";
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: CustomScrollView(
        slivers: [
          // sliver app bar
          SliverAppBar(
            expandedHeight: 300,
            backgroundColor: Colors.deepPurple,
            leading: Icon(Icons.menu),
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('A P P B A R'),
              background: Container(color: Colors.deepPurple[700]),
            ),
          ),

          // sliver items 1
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.deepPurple[400],
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 2
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.deepPurple[400],
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 3
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.deepPurple[400],
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 4
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.deepPurple[400],
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 5
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.deepPurple[400],
                  height: 150,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}