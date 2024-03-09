import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:getx_flutter/login%20Api/login_controller.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login by Rest Api')),
      body: Row(
        children: [
          TextFormField(
            controller: _controller.email.value,
            decoration: InputDecoration(hintText: 'Email'),
          ),
          TextFormField(
            controller: _controller.password.value,
            decoration: InputDecoration(hintText: 'password'),
          )
        ],
      ),
    );
  }
}
