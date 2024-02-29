import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DartLightTheme extends StatefulWidget {
  const DartLightTheme({super.key});

  @override
  State<DartLightTheme> createState() => _DartLightThemeState();
}

class _DartLightThemeState extends State<DartLightTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Light And Dart theme "),
          backgroundColor: Color.fromARGB(255, 122, 103, 226),
          actions: [
            IconButton(
                onPressed: () {
                  Get.changeTheme(ThemeData.dark());
                },
                icon: Icon(Icons.dark_mode)),
            IconButton(
                onPressed: () {
                  Get.changeTheme(ThemeData.light());
                },
                icon: Icon(Icons.light_mode)),
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' Light And Dart theme  example',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              //
            ],
          ),
        ));
    ;
  }
}
