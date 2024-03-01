import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/GetConntroller.dart';

class GetxStateChange extends StatefulWidget {
  const GetxStateChange({super.key});

  @override
  State<GetxStateChange> createState() => _GetxStateChangeState();
}

class _GetxStateChangeState extends State<GetxStateChange> {
  final GetConntroller conntroller = Get.put(GetConntroller());

  @override
  Widget build(BuildContext context) {
    print("ram arm ji");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Getx state change"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'Getx state change  ${conntroller.countername.toString()}',
                  style: TextStyle(
                    fontSize: 29,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  conntroller.increment();
                },
                child: const Text('click'),
              ),
              Obx(
                () => Container(
                  child: Center(
                    child: Text(
                      'ZOOM',
                      style:
                          TextStyle(fontSize: conntroller.opacity.value * 30),
                    ),
                  ),
                  height: 200,
                  width: 200,
                  color:
                      Colors.deepPurple.withOpacity(conntroller.opacity.value),
                ),
              ),
              Obx(() => Slider(
                  value: conntroller.opacity.value,
                  onChanged: (value) {
                    conntroller.colochangeMehod(value);
                  }))
            ],
          ),
        ));
  }
}
