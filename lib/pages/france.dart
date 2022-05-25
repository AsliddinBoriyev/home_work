import 'package:flutter/material.dart';

class France extends StatefulWidget {
  static const id = "france";

  const France({Key? key}) : super(key: key);

  @override
  State<France> createState() => _FranceState();
}

class _FranceState extends State<France> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        width: 230,
      ),
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/france.png",
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(230),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                // width: double.infinity,
                alignment: const Alignment(-0.8, 0.2),
                // padding: EdgeInsets.symmetric(vertical: 25),
                child: const Text(
                  "France",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w900),
                ),
              ),
              // SizedBox(height: 10),
              Container(
                alignment: const Alignment(-0.6, 0),
                margin: const EdgeInsets.only(bottom: 90),
                child: const Text(
                  "12 January - 25 January 2019",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 4, top: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.white24,
                      ),
                      margin: EdgeInsets.only(bottom: 30),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "France 12.01",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 30),
                      padding: const EdgeInsets.only(bottom: 3.5, top: 3.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.white,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      // mainAxisAlignment: MainAxisAlignment.end,
                      child: Text(
                        "Paris 15.01",
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.w900,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(bottom: 30),
                    padding: EdgeInsets.only(bottom: 3.5, top: 3.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.white24,
                    ),
                    child: const Text(
                      "Normandy",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  )),
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.amber,
        centerTitle: false,
        leadingWidth: 80,
        leading: Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: const Icon(
                Icons.chevron_left,
                size: 40,
              ),
            );
          },
        ),
        actions: const [
          Icon(Icons.edit),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
