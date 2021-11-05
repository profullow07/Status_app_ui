import 'package:all_status/HomeScreen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Love_screen extends StatelessWidget {
  const Love_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
              )),
          title: Center(
            child: Text(
              "LOVE STATUS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("images/lovest.jpg")),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 10.0, 5.0, 10.0),
                            child: SelectableText(
                              "“As he read,I fell in love the way you fall asleep: slowly, and then all at once.” – John Green",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 75,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Share",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 75,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.copy,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Copy",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Invite",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      height: 75,
                      width: 100,
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
