import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark));
    });
    // TODO: implement initState
    super.initState();
  }

  var width;
  var height;
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
                height: 48,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: width * 0.06),
                            child: Image.asset(
                              "assets/images/static/smk10.png",
                              width: 45,
                              height: 45,
                            )),
                        SizedBox(
                          width: width * 0.015,
                        ),
                        Text(
                          "Koperasi",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xFF2A2C2B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: width * 0.045)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.048),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/static/profile.png'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.075),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: GoogleFonts.poppins(
                          fontSize: width * 0.065, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Khalid Khasimiri",
                      style: GoogleFonts.poppins(
                          fontSize: width * 0.065, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.028,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.072),
                child: Container(
                  width: width,
                  height: 75,
                  decoration: BoxDecoration(
                      color: Color(0xFF25396F),
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          width: width / 4,
                          height: height,
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(135, 162, 170, 1)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 3, bottom: 3),
                                child: StreamBuilder(
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.active) {
                                      if (snapshot.hasData) {
                                        return Row(
                                          children: [
                                            Countup(
                                              begin: 0,
                                              end: 24,
                                              style: TextStyle(
                                                  color: Colors.white),
                                              duration: Duration(seconds: 1),
                                            ),
                                            // Text(
                                            //   (snapshot.data.att == 0)
                                            //       ? " Day"
                                            //       : " Days",
                                            //   style: TextStyle(
                                            //       fontFamily: "Montserrat",
                                            //       fontWeight: FontWeight.normal,
                                            //       fontSize: 12,
                                            //       color: Colors.white),
                                            // ),
                                          ],
                                        );
                                      }
                                    }

                                    return Row(
                                      children: [
                                        Countup(
                                            begin: 0,
                                            end: 0,
                                            duration: Duration(seconds: 1),
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Text(
                                          " Kali",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              StreamBuilder(builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.active) {
                                  if (snapshot.hasData) {
                                    return LinearPercentIndicator(
                                      animation: true,
                                      animationDuration: 1000,
                                      alignment: MainAxisAlignment.start,
                                      padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                      width: 70.0,
                                      lineHeight: 5.0,
                                      // percent: (snapshot.data.att /
                                      //         DateUtils.getDaysInMonth(
                                      //             int.tryParse(DateFormat.y()
                                      //                 .format(DateTime.now())),
                                      //             int.tryParse(DateFormat.M()
                                      //                 .format(DateTime.now()))))
                                      //     .toDouble(),
                                      backgroundColor:
                                          Color.fromRGBO(198, 198, 198, 100),
                                      progressColor:
                                          Color.fromRGBO(243, 146, 38, 1),
                                    );
                                  }
                                }

                                return LinearPercentIndicator(
                                  animation: true,
                                  animationDuration: 1000,
                                  alignment: MainAxisAlignment.start,
                                  padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  width: 70.0,
                                  lineHeight: 5.0,
                                  percent: 0.0,
                                  backgroundColor:
                                      Color.fromRGBO(198, 198, 198, 100),
                                  progressColor:
                                      Color.fromRGBO(243, 146, 38, 1),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 15, 10),
                        child: Container(
                          width: width / 4,
                          height: height,
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromRGBO(135, 162, 170, 1)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Diterima",
                                style: TextStyle(
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 3, bottom: 3),
                                child: StreamBuilder(
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.active) {
                                      if (snapshot.hasData) {
                                        return Row(
                                          children: [
                                            Countup(
                                              begin: 0,
                                              end: 25,
                                              style: TextStyle(
                                                  color: Colors.white),
                                              duration: Duration(seconds: 1),
                                            ),
                                            // Text(
                                            //   (snapshot.data.notatt == 0)
                                            //       ? " Day"
                                            //       : " Days",
                                            //   style: TextStyle(
                                            //       fontFamily: "Montserrat",
                                            //       fontWeight: FontWeight.normal,
                                            //       fontSize: 12,
                                            //       color: Colors.white),
                                            // ),
                                          ],
                                        );
                                      }
                                    }

                                    return Row(
                                      children: [
                                        Countup(
                                            begin: 0,
                                            end: 0,
                                            duration: Duration(seconds: 1),
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Text(
                                          " Kali",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              StreamBuilder(builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.active) {
                                  if (snapshot.hasData) {
                                    return LinearPercentIndicator(
                                      animation: true,
                                      animationDuration: 1000,
                                      alignment: MainAxisAlignment.start,
                                      padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                      width: 70.0,
                                      // lineHeight: 5.0,
                                      // percent: (snapshot.data.notatt /
                                      //         DateUtils.getDaysInMonth(
                                      //             int.tryParse(DateFormat.y()
                                      //                 .format(DateTime.now())),
                                      //             int.tryParse(DateFormat.M()
                                      //                 .format(DateTime.now()))))
                                      //     .toDouble(),
                                      backgroundColor:
                                          Color.fromRGBO(198, 198, 198, 100),
                                      progressColor:
                                          Color.fromRGBO(243, 146, 38, 1),
                                    );
                                  }
                                }

                                return LinearPercentIndicator(
                                  animation: true,
                                  animationDuration: 1000,
                                  alignment: MainAxisAlignment.start,
                                  padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  width: 70.0,
                                  lineHeight: 5.0,
                                  percent: 0.0,
                                  backgroundColor:
                                      Color.fromRGBO(198, 198, 198, 100),
                                  progressColor:
                                      Color.fromRGBO(243, 146, 38, 1),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 9, 0, 10),
                        child: Container(
                          width: width / 4.5,
                          height: height,
                          decoration: BoxDecoration(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ditolak",
                                style: TextStyle(
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 3, bottom: 3),
                                child: StreamBuilder(
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.active) {
                                      if (snapshot.hasData) {
                                        return Row(
                                          children: [
                                            Countup(
                                              begin: 0,
                                              end: 26,
                                              style: TextStyle(
                                                  color: Colors.white),
                                              duration: Duration(seconds: 1),
                                            ),
                                            // Text(
                                            //   (snapshot.data.late == 0)
                                            //       ? " Day"
                                            //       : " Days",
                                            //   style: TextStyle(
                                            //       fontFamily: "Montserrat",
                                            //       fontWeight: FontWeight.normal,
                                            //       fontSize: 12,
                                            //       color: Colors.white),
                                            // ),
                                          ],
                                        );
                                      }
                                    }
                                    return Row(
                                      children: [
                                        Countup(
                                            begin: 0,
                                            end: 0,
                                            duration: Duration(seconds: 1),
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Text(
                                          " Kali",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              StreamBuilder(builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.active) {
                                  if (snapshot.hasData) {
                                    return LinearPercentIndicator(
                                      animation: true,
                                      animationDuration: 1000,
                                      alignment: MainAxisAlignment.start,
                                      padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                      width: 70.0,
                                      lineHeight: 5.0,
                                      // percent: (snapshot.data.late /
                                      //         DateUtils.getDaysInMonth(
                                      //             int.tryParse(DateFormat.y()
                                      //                 .format(DateTime.now())),
                                      //             int.tryParse(DateFormat.M()
                                      //                 .format(DateTime.now()))))
                                      //     .toDouble(),
                                      backgroundColor:
                                          Color.fromRGBO(198, 198, 198, 100),
                                      progressColor:
                                          Color.fromRGBO(243, 146, 38, 1),
                                    );
                                  }
                                }

                                return LinearPercentIndicator(
                                  animation: true,
                                  animationDuration: 1000,
                                  alignment: MainAxisAlignment.start,
                                  padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  width: 70.0,
                                  lineHeight: 5.0,
                                  percent: 0.0,
                                  backgroundColor:
                                      Color.fromRGBO(198, 198, 198, 100),
                                  progressColor:
                                      Color.fromRGBO(243, 146, 38, 1),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.029,
              ),
              Center(
                child: Text(
                  "K E L A S",
                  style: GoogleFonts.poppins(
                      color: Color(0xFF25396F),
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.06),
                ),
              ),
              Container(
                color: Colors.red,
                width: width,
                height: height,
                child: GridView.count(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 8,
                  children: [
                    _buildGrid(),
                    _buildGrid(),
                    _buildGrid(),
                    _buildGrid(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGrid() {
    return Container(
      width: height * 0.025,
      height: height * 0.025,
      decoration: BoxDecoration(color: Color(0xFF25396F)),
    );
  }
}
