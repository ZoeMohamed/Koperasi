import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koperasi/screens/transcreen.dart';

class AklPage extends StatefulWidget {
  const AklPage({Key? key}) : super(key: key);

  @override
  State<AklPage> createState() => _AklPageState();
}

class _AklPageState extends State<AklPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        TextEditingController().clear();
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0), // here the desired height

          child: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10, top: 20, bottom: 20),
                child: SizedBox(
                  width: width * 0.5,
                  // height: 100,
                  child: TextField(
                    // onChanged: _serach_nama,

                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.done,
                    maxLines: 3,
                    minLines: 2,

                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1)),
                      labelText: "Search...",
                      labelStyle:
                          TextStyle(color: Color(0xFF333264).withOpacity(0.4)),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                      errorStyle: TextStyle(color: Colors.red.withOpacity(0.8)),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.red.withOpacity(0.8),
                          width: 1.0,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width * 0.04),
                        borderSide: BorderSide(
                          color: Colors.red.withOpacity(0.8),
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      suffixIcon: Icon(
                        FluentIcons.search_12_filled,
                        size: 20,
                        color: Color(0xFF3D4860).withOpacity(0.4),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                    ),
                    // controller: _searchController,
                    onTap: () async {},
                  ),
                ),
              ),
            ],
            toolbarHeight: 75.0,
            elevation: 0,
            shadowColor: Colors.black.withOpacity(0.6),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: IconButton(
                icon: Icon(
                  FluentIcons.chevron_left_16_filled,
                  color: Color(0xFF2A2C2B),
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Bottomnav();
                  }));
                },
              ),
            ),
            title: Text(
              "Kelas AKL",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black)),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.8),
                            style: BorderStyle.solid,
                            width: 0.80),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          onChanged: (val) {
                            setState(() {});
                          },
                          alignment: AlignmentDirectional.center,
                          isExpanded: true,
                          key: UniqueKey(),
                          value: "H",
                          items: [
                            DropdownMenuItem(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "X-RPL",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              value: "H",
                            ),
                            DropdownMenuItem(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                "XI-RPL",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )),
                              value: "L",
                            ),
                            DropdownMenuItem(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                "XII-RPL",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )),
                              value: "K",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Rekap PDF",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Inter-Bold",
                                fontSize: 12),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(FluentIcons.arrow_export_up_20_filled,
                              color: Colors.white, size: 17)
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFD32C2C)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
