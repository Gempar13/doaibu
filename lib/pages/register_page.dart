import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:innovilage/network/api/url_api.dart';
import 'package:innovilage/pages/home_page.dart';
import 'package:innovilage/pages/login_page.dart';
import 'package:innovilage/theme.dart';
import 'package:innovilage/widget/button_primary.dart';
import 'package:http/http.dart' as http;

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _secureText = true;
  void showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  SubmitRegister() async {
    var urlRegister = Uri.parse(BASEURL.apiRegister);
    final response = await http.post(urlRegister, body: {
      'emailaddress': emailController.text,
      'password': passwordController.text,
      'role': 'user',
    });
    final data = jsonDecode(response.body);
    int value = data['value'];
    String message = data['message'];

    if (value == 1) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('information'),
                content: Text(message),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePages()),
                            (route) => false);
                      },
                      child: Text('OK'),),
                ],
              ),);
      setState(() {});
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('information'),
                content: Text(message),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'))
                ],
              ));
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF164863),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Center(
                    child: Text(
                  "HALO MAMA",
                  style: regulerTextStyle.copyWith(
                      fontSize: 35, color: Colors.white),
                )),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'LOGIN',
                  style: regulerTextStyle.copyWith(
                      fontSize: 25, color: Colors.white),
                ),
                Text(
                  'Login Into Your Account',
                  style: regulerTextStyle.copyWith(
                      fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  height: 24,
                ),

                /// NOTE : TEXXT FIELD
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(64, 172, 170, 164),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ],
                      color: Colors.white),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email Address',
                        hintStyle: regulerTextStyle.copyWith(
                            fontSize: 15, color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),

                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(64, 172, 170, 164),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ],
                      color: Colors.white),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: passwordController,
                    obscureText: _secureText,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: showHide,
                          icon: _secureText
                              ? Icon(
                                  Icons.visibility_off,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.visibility,
                                  size: 20,
                                ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: regulerTextStyle.copyWith(
                            fontSize: 15, color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ButtonPrimary(
                    text: 'LOGIN',
                    onTap: () {
                      if (emailController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text('Warning !!'),
                                  content: Text('please, enter the fields'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'))
                                  ],
                                ));
                      } else {
                        SubmitRegister();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don't have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPages()),
                            (route) => false);
                      },
                      child: Text(
                        ' Create Account',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
