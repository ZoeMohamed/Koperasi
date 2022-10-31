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

      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            ExpansionTile(
              title: Text('RPL'),
              children: <Widget>[
                ListTile(
                    title: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return LoginPage();
                          }));
                        },
                        child: Text('X-RPL'))),
                ListTile(title: Text('XI-RPL')),
                ListTile(title: Text('XII-RPL')),
              ],
            ),
            SizedBox(
              height: 65,
            ),
            ExpansionTile(
              title: Text('BDP'),
              children: <Widget>[
                ListTile(
                    title: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return LoginPage();
                          }));
                        },
                        child: Text('X-BDP 1'))),
                ListTile(title: Text('X-BDP 2')),
                ListTile(title: Text('XI-BDP 1')),
                ListTile(title: Text('XI-BDP 2')),
                ListTile(title: Text('XII-BDP 1')),
                ListTile(title: Text('XII-BDP 2')),
              ],
            ),
            SizedBox(
              height: 65,
            ),
            ExpansionTile(
              title: Text('AKL'),
              children: <Widget>[
                ListTile(
                    title: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return LoginPage();
                          }));
                        },
                        child: Text('X-AKL 1'))),
                ListTile(title: Text('X-AKL 2')),
                ListTile(title: Text('XI-AKL 1')),
                ListTile(title: Text('XI-AKL 2')),
                ListTile(title: Text('XII-AKL 1')),
                ListTile(title: Text('XII-AKL 2')),
              ],
            ),
            SizedBox(
              height: 65,
            ),
            ExpansionTile(
              title: Text('OTKP'),
              children: <Widget>[
                ListTile(
                    title: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return LoginPage();
                          }));
                        },
                        child: Text('X-OTKP 1'))),
                ListTile(title: Text('X-OTKP 2')),
                ListTile(title: Text('XI-OTKP 1')),
                ListTile(title: Text('XI-OTKP 2')),
                ListTile(title: Text('XII-OTKP 1')),
                ListTile(title: Text('XII-OTKP 2')),
              ],
            ),
          ],
        ),
      ),
      // drawer: MultiLevelDrawer(
      //   backgroundColor: Colors.white,
      //   rippleColor: Colors.white,
      //   subMenuBackgroundColor: Colors.grey.shade100,
      //   header: Container(
      //     color: Colors.red,
      //     // Header for Drawer
      //     height: 350,
      //     child: Center(
      //         child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Image.asset(
      //           "assets/images/static/profile.png",
      //           width: 100,
      //           height: 100,
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Text(
      //           "Admin",
      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //         )
      //       ],
      //     )),
      //   ),
      //   children: [
      //     // Child Elements for Each Drawer Item
      //     MLMenuItem(

      //         leading: Icon(Icons.person),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text(
      //           "My Profile ",
      //         ),
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
      //         ],
      //         onClick: () {}),
      //     MLMenuItem(
      //         leading: Icon(Icons.settings),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text("Settings"),
      //         onClick: () {},
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))
      //         ]),
      //     MLMenuItem(
      //       leading: Icon(Icons.notifications),
      //       content: Text("Notifications"),
      //       onClick: () {},
      //     ),
      //     MLMenuItem(
      //         leading: Icon(Icons.payment),
      //         trailing: Icon(Icons.arrow_right),
      //         content: Text(
      //           "Payments",
      //         ),
      //         subMenuItems: [
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
      //           MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
      //         ],
      //         onClick: () {}),
      //   ],
      // ),
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
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
              child: _buildContainer(header: "Jumlah Pemesanan", total: 249)),
          SizedBox(
            height: 25,
          ),
          Center(
              child: _buildContainer(header: "Pemesanan Diterima", total: 149)),
          SizedBox(
            height: 25,
          ),
          Center(child: _buildContainer(header: "Pemesanan Ditolak", total: 5)),
          SizedBox(
            height: 20,
          ),
          Container(
              width: width * 0.93,
              height: height * 0.2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1, 1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        color: Colors.black.withOpacity(0.2))
                  ]),
              child: _buildChart())
        ],
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
