import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Cardgetx extends GetxController {
  RxList<String> fruitlist = ['apple', 'orange', 'mango', 'banana'].obs;

  RxList<dynamic> fruitdata = [].obs;

  addfav(String value) {
    fruitdata.add(value);
  }

  removefav(String value) {
    fruitdata.remove(value);
  }

  // favcolor() {
  //   if (fruitdata.contains(fruitlist[index].toString())) {
  //     fruitdata.remove(fruitlist[index].toString());
  //   } else {
  //     fruitdata.add(fruitlist[index].toString());
  //   }
  // }
}
