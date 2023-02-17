import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            title: Image.asset(
              '/Users/iphtech30/Desktop/test/flutter/images/iphlogo1.png',
              height: 50,
              width: 50,
            ),
            leading: const Icon(
              Icons.menu,
            ),
            actions: const <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(Icons.notifications),
              ),
            ],
          ),
          body: const BodyItems(),
          bottomNavigationBar: SafeArea(
            child: BottomAppBar(
              color: Colors.blue,
              child: OverflowBar(
                overflowAlignment: OverflowBarAlignment.center,
                alignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: ElevatedButton(
                      onPressed: null,
                      child: Icon(Icons.share),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: null,
                      child: Icon(Icons.home),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                        onPressed: null, child: Icon(Icons.search)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BodyItems extends StatefulWidget {
  const BodyItems({super.key});

  @override
  State<BodyItems> createState() => _BodyItemsState();
}

class _BodyItemsState extends State<BodyItems> {
  void likeBtn() {
    Container(
      height: 400,
      width: 400,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 206, 222, 253),
      child: Expanded(
        child: Center(
          child: Column(
            children: [
              Center(
                child: Container(
                  // color: Colors.cyan,
                  width: 300,
                  // height: 300,
                  margin: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      '/Users/iphtech30/Desktop/test/flutter/images/game.jpeg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: ElevatedButton(
                        onPressed: null,
                        child: Icon(Icons.skip_previous),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: null,
                        child: Icon(Icons.favorite_outline),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: ElevatedButton(
                        onPressed: null,
                        child: Icon(Icons.skip_next),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
