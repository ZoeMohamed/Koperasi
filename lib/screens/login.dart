// ignore_for_file: prefer_const_constructors
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

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
          systemNavigationBarIconBrightness: Brightness.dark));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
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
              Text(
                "Login",
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              Center(
                child: Form(
                  key: _formKey,
                  child: Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.85,
                          height: height * 0.28,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Field Username Wajib diisi!";
                              }
                              return null;
                            },
                            onSaved: (val) {},
                            decoration: InputDecoration(
                              errorStyle: TextStyle(color: Colors.orange),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.9, color: Color(0xFF7E7E7E)),
                              ),
                              hintText: "Username",
                              hintStyle: TextStyle(
                                  color: Color(0xFF7E7E7E).withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto-Medium'),
                              prefixIcon: Icon(
                                FluentIcons.person_16_regular,
                                color: Color(0xFF7E7E7E),
                              ),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Text("data");
  }
}
