import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/Cards.dart';
import 'package:getx_flutter/Dart_Night_theme.dart';
import 'package:getx_flutter/DialogButton.dart';
import 'package:getx_flutter/GetxStateChange.dart';
import 'package:getx_flutter/Snackbar.dart';
import 'package:getx_flutter/login%20Api/Login_.dart';
import 'package:getx_flutter/login%20Api/Signup.dart';
import 'package:getx_flutter/login%20Api/login.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    Platform.isAndroid
        ? await Firebase.initializeApp(
            options: FirebaseOptions(
              apiKey: "AIzaSyAdQ7hpZg3VpU6Cn_2bN70O27o9CEGzUcw",
              appId: "1:1030517198157:android:e5832f1177afcd507f7b04",
              messagingSenderId: "1030517198157",
              projectId: "news-app-f7d61",
            ),
          )
        : await Firebase.initializeApp();

    runApp(GetMaterialApp(home: Signup()));
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
}

// const GetMaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Login(),

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row and colum aliment")),
      body: Center(
        child: Container(
          color: Colors.black26,
          height: 600,
          width: 100,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text('A'),
              ),
              CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text('b'),
              ),
              CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text('c'),
              ),
              CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text('d'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
