// ignore_for_file: prefer_const_constructors
import 'dart:developer';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koperasi/screens/class.dart';
import 'package:koperasi/screens/transcreen.dart';

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
  final _formKey = GlobalKey<FormState>();
  var width;
  var height;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                Center(
                  child: SizedBox(
                    width: width * 0.88,
                    child: Image.asset(
                      "assets/images/static/asset_login.png",
                      width: width,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.072),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.042,
                ),
                Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.85,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Field Username Wajib diisi!";
                              }
                              return null;
                            },
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.9, color: Color(0xFF7E7E7E)),
                              ),
                              hintText: "Username",
                              hintStyle: TextStyle(
                                  color: Color(0xFF7E7E7E).withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto-Medium',
                                  fontSize: width * 0.035),
                              prefixIcon: Icon(
                                FluentIcons.person_16_regular,
                                color: Color(0xFF7E7E7E),
                              ),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.070,
                        ),
                        SizedBox(
                          width: width * 0.85,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Field password Wajib diisi!";
                              }
                              return null;
                            },
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.9, color: Color(0xFF7E7E7E)),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Color(0xFF7E7E7E).withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto-Medium',
                                  fontSize: width * 0.035),
                              prefixIcon: Icon(
                                FluentIcons.shield_keyhole_20_regular,
                                color: Color(0xFF7E7E7E),
                              ),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.045,
                        ),
                        MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              log("tes");
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (cntxt) {
                                return Bottomnav();
                              }));
                            }
                          },
                          minWidth: width * 0.86,
                          // shape: ,
                          height: height * 0.047,
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13)),
                          ),
                          color: Color(0xFF25396F),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
