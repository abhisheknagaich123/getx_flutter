import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Snackbar"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Snackbar example'),
              TextButton(
                onPressed: () {
                  Get.snackbar('Snackbar', 'This is a snackbar by getx12',
                      snackPosition: SnackPosition.BOTTOM,
                      // forwardAnimationCurve: Curves.elasticInOut,
                      // reverseAnimationCurve: Curves.easeOut,
                      backgroundColor: Colors.deepPurple,
                      icon: Icon(Icons.access_alarms_sharp));
                },
                child: const Text('Open'),
              )
            ],
          ),
        ));
  }
}
