import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final listItems = [
      "a",
      "a",
      "a",
    ];
    return MaterialApp(
      home: Scaffold(
          body: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 24, left: 64, right: 64),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(children: [
                            Center(
                              child: Text(
                                listItems[index],
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Center(
                              child: Text(
                                listItems[index],
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.volume_down))
                      ],
                    )
                  ],
                ),
                // child: Center(
                //   child: Text(
                //     listItems[index],
                //     textAlign: TextAlign.center,
                //   ),
                // )
              )
            ],
          );
        },
      )),
    );
  }
}
