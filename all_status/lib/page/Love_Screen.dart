import 'package:all_status/HomeScreen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Love_screen extends StatefulWidget {
  const Love_screen({Key? key}) : super(key: key);

  @override
  State<Love_screen> createState() => _Love_screenState();
}

class _Love_screenState extends State<Love_screen> {
  var yourText = "";

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
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 250,
              width: 360,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/lve.jpg")),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      yourText =
                          "Lorem Ipsum \n is simply dummy  text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 90,
                  child: ElevatedButton(
                    child: Text(
                      'Invite',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 90,
                  child: ElevatedButton(
                    child: Text(
                      'Copy',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: yourText))
                          .then((value) {
                        return Fluttertoast.showToast(msg: " Copied Success");
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                    height: 50,
                    width: 90,
                    child: ElevatedButton(
                      child: Text(
                        'Share',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                      ),
                    )),
              ],
            )
          ],
        )),
      ),
    );
  }
}
