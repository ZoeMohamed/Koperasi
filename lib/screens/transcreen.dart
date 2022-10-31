import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:koperasi/screens/class.dart';
import 'package:koperasi/screens/dashboard.dart';
import 'package:koperasi/screens/profile.dart';
import 'package:koperasi/widgets/btnav.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({Key? key}) : super(key: key);

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  String _lastSelected = 'TAB: 0';

  int _selectedIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';

      _selectedIndex = index;
      print(_lastSelected);
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarColor: Theme.of(context).scaffoldBackgroundColor,
          statusBarIconBrightness: Brightness.dark));
    });
    super.initState();
  }

  List<Widget> screens = [DashboardPage(), ClassPage(), ProfilePage()];

  TextEditingController controllertahun = TextEditingController(
      text: DateFormat('y').format(DateTime.now()) +
          "/" +
          (int.parse(DateFormat('y').format(DateTime.now())) + 1).toString());
  TextEditingController controllermatkul = TextEditingController();
  TextEditingController controllersemester = TextEditingController();
  TextEditingController controllerfrom = TextEditingController();

  TextEditingController controllerto = TextEditingController();

  TimeOfDay formattedtime = TimeOfDay.now();

  // Initialize
  var _getcurday = DateFormat('EEEE').format(DateTime.now());
  var _getcurdate = DateFormat('d').format(DateTime.now());

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("HH:mm");

    var width = MediaQuery.of(context).size.width;
    //Create Dialog

    return Scaffold(
      body: screens[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: FABBottomAppBar(
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(
            iconData: FluentIcons.home_16_filled, content: "",
            // iconSize:20
          ),
          FABBottomAppBarItem(
              iconData: FluentIcons.class_20_filled, content: ""),
          FABBottomAppBarItem(
              iconData: FluentIcons.person_16_filled, content: ""),
        ],
      ),
    );
  }
}
