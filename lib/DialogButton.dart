import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DilogButton extends StatefulWidget {
  const DilogButton({super.key});

  @override
  State<DilogButton> createState() => _DilogButtonState();
}

class _DilogButtonState extends State<DilogButton> {
  @override
  Widget build(BuildContext context) {
    print('helo');
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Dilog box "),
          backgroundColor: Color.fromARGB(255, 122, 103, 226),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dilog Box  example',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'DialogAlert',
                    middleText: 'Are you want to delete this iteam',
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Ok')),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('cancel')),
                  );
                },
                child: const Text(
                  'Open',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ));
  }
}
