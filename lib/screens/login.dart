// ignore_for_file: prefer_const_constructors

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  // Route for Login
  static const routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/build.png",
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 405,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  height: 438,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 32),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Log in.",
                            style: TextStyle(
                                fontFamily: "Nunito-Extra-Bold",
                                fontSize: 40,
                                color: Color(0xFF25396F),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Form(
                          child: Column(
                        children: [
                          SizedBox(
                            width: 340,
                            child: TextFormField(
                              controller: _nameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Field Username Wajib diisi!";
                                }
                                return null;
                              },
                              onSaved: (val) {},
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(FluentIcons.person_12_regular),
                                errorStyle: TextStyle(height: 0.9),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0.9, color: Color(0xFF7E7E7E)),
                                ),
                                hintText: "Username",
                                hintStyle: TextStyle(
                                    color: Color(0xFF7E7E7E).withOpacity(0.7),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto-Medium'),
                                alignLabelWithHint: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          SizedBox(
                            width: 340,
                            child: TextFormField(
                              controller: _passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Field Password Wajib diisi!";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(FluentIcons.shield_keyhole_16_regular),
                                border: OutlineInputBorder(),
                                hintText: "Password",
                                errorStyle: TextStyle(height: 0.9),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0.9, color: Color(0xFF7E7E7E)),
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xFF7E7E7E).withOpacity(0.7),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto-Medium'),
                                alignLabelWithHint: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Material(
                            child: InkWell(
                              highlightColor: Colors.green.withOpacity(0.4),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF435EBE)),
                                height: 40,
                                width: 300,
                                child: Center(
                                    child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              onTap: () async {},
                            ),
                          )
                        ],
                      )),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Or",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Material(
                        child: InkWell(
                          highlightColor: Colors.green.withOpacity(0.4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFEA4335)),
                            height: 40,
                            width: 300,
                            child: Center(
                                child: Text(
                              "Continue With Google",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          onTap: () async {},
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        )
      ],
    );
  }
 Widget _buildForm(){

  return Text("data");
  }
}
