import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/CardsGetx.dart';

class Cards_ extends StatefulWidget {
  const Cards_({super.key});

  @override
  State<Cards_> createState() => _Cards_State();
}

class _Cards_State extends State<Cards_> {
  // List<String> fruitlist = ['apple', 'orange', 'mango', 'banana'];
  // List<String> fruitdata = [];

  final Cardgetx Cardgetxcontroler = Get.put(Cardgetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(
          child: Text('Hello Cards'),
        ),
        backgroundColor: Color.fromARGB(255, 61, 10, 202),
      ),
      body: ListView.builder(
          itemCount: Cardgetxcontroler.fruitlist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    if (Cardgetxcontroler.fruitdata.contains(
                        Cardgetxcontroler.fruitlist[index].toString())) {
                      Cardgetxcontroler.removefav(
                          Cardgetxcontroler.fruitlist[index].toString());
                    } else {
                      Cardgetxcontroler.addfav(
                          Cardgetxcontroler.fruitlist[index].toString());
                    }
                  },
                  title: Text(Cardgetxcontroler.fruitlist[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: Cardgetxcontroler.fruitdata.contains(
                              Cardgetxcontroler.fruitlist[index].toString())
                          ? Colors.red
                          : Color.fromARGB(153, 11, 91, 184),
                    ),
                  )),
            );
          }),
    );
  }
}
