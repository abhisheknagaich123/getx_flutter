import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetConntroller extends GetxController {
  RxInt countername = 1.obs;
  RxDouble opacity = .5.obs;
  increment() {
    countername.value++;
    //print(countername);
  }

  colochangeMehod(double value) {
    opacity.value = value;
  }
}
