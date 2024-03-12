import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final email = TextEditingController().obs;
  final password = TextEditingController().obs;
  final confirm_password = TextEditingController().obs;
  RxBool eye = true.obs;

  passwordobsucure() {
    eye.value = !eye.value;
  }

  String? validateEmail(value) {
    if (value!.isEmpty) {
      return 'Please enter an email';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatepassword(value) {
    if (value!.isEmpty) {
      return 'Please enter an email';
    }
    if (value != password.value.text) {
      return 'Please enter a valid email';
    }
    return null;
  }

  // void login() async {
  //   try {
  //     final response = await http.post(
  //       Uri.parse('https://reqres.in/api/login'),
  //       body: {
  //         'email': email.value.text,
  //         'password': password.value.text,
  //       },
  //     );

  //     var data = jsonDecode(response.body);
  //     print(data);
  //     print(response.statusCode);

  //     if (response.statusCode == 200) {
  //       Get.snackbar("Good job", 'Congratulations');
  //     } else {
  //       Get.snackbar('Login failed', 'Beta sahi entry daal');
  //     }
  //   } catch (e) {
  //     Get.snackbar('Exception', e.toString());
  //   }
  // }
  login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.value.text, password: password.value.text);
      print(userCredential);
      Get.snackbar('succesfull', '"Registered Successfully');
    } catch (e) {
      print(e);
    }
  }
}
