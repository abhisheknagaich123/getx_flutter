import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController _controller = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login by Rest Api'),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.cyanAccent,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 380,
                    child: TextFormField(
                      enableSuggestions: true, // Enable suggestions/paste
                      autocorrect: true,

                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _controller.email.value,
                      validator: _controller.validateEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => Container(
                      height: 70,
                      width: 380,
                      child: TextFormField(
                        obscureText: _controller.eye.value,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                        controller: _controller.password.value,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffix: IconButton(
                            onPressed: () {
                              _controller.passwordobsucure();
                            },
                            icon: Icon(Icons.visibility),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => Container(
                      height: 70,
                      width: 380,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _controller.confirm_password.value,
                        obscureText: _controller.eye.value,
                        validator: _controller.validatepassword,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          prefixIcon: Icon(Icons.lock),
                          suffix: IconButton(
                            onPressed: () {
                              _controller.passwordobsucure();
                            },
                            icon: Icon(Icons.visibility),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // Handle your login logic here
                        print('Login tapped');
                        _controller.login();
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 59, 127, 230),
                      ),
                      width: 280,
                      height: 60,
                      child: const Center(
                        child: Text('Login'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(onPressed: () {}, child: Text('Forgot Password')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          print('Facebook CircleAvatar tapped!');
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/fb.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('GitHub CircleAvatar tapped!');
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('images/github.jpeg'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('Google CircleAvatar tapped!');
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('images/google.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('New User? Create Account')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
