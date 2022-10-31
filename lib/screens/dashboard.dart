import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:koperasi/screens/login.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
          // statusBarColor: ,
          systemNavigationBarIconBrightness: Brightness.dark));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF2F7FF),
      appBar: AppBar(
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                "assets/images/static/profile.png",
              )))
        ],
        backgroundColor: Color(0xFF435EBE),
        title: Text(
          "KOPERASI",
          style: TextStyle(
              color: Colors.white, fontFamily: "Nunito-Bold", fontSize: 21),
        ),
        elevation: 0.0,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 12,
            ),
            Center(
                child: _buildContainer(header: "Jumlah Pemesanan", total: 249)),
            SizedBox(
              height: 15,
            ),
            Center(
                child:
                    _buildContainer(header: "Pemesanan Diterima", total: 149)),
            SizedBox(
              height: 15,
            ),
            Center(
                child: _buildContainer(header: "Pemesanan Ditolak", total: 5)),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                  width: width * 0.3,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.1),
                            offset: Offset(2, 2),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: _buildChart()),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChart() {
    return SfCircularChart(series: [
      DoughnutSeries<ChartData, String>(
        dataSource: [
          ChartData('Jumlah Pemesanan', 249, Color.fromRGBO(9, 0, 136, 1)),
          ChartData('Pemesanan Diterima', 149, Color.fromRGBO(147, 0, 119, 1)),
          ChartData('Pemesanan Ditolak', 5, Color.fromRGBO(228, 0, 124, 1)),
        ],
        xValueMapper: (ChartData data, _) => data.x,
        yValueMapper: (ChartData data, _) => data.y,
      )
    ], tooltipBehavior: TooltipBehavior(enable: true));
  }

  Widget _buildContainer({String? header, int? total}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xFF000000).withOpacity(0.1),
                offset: Offset(2, 2),
                blurRadius: 1,
                spreadRadius: 1)
          ]),
      width: 370,
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.only(left: 21),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    header.toString(),
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF7C8DB5),
                        fontWeight: FontWeight.bold),
                  ))),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left: 21),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    total.toString(),
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF25396F),
                        fontWeight: FontWeight.bold),
                  ))),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
