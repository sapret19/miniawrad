import 'package:awrad/halaman/Yasin.dart';
import 'package:awrad/halaman/cobawaqiah.dart';
import 'package:awrad/halaman/doa_waqiah.dart';
import 'package:awrad/halaman/sabul_munjiyat/dukhon.dart';
import 'package:awrad/halaman/sabul_munjiyat/fushilat.dart';
import 'package:awrad/halaman/sabul_munjiyat/hasyr.dart';
import 'package:awrad/halaman/sabul_munjiyat/mulk.dart';
import 'package:awrad/halaman/sabul_munjiyat/sajdah.dart';
import 'package:awrad/halaman/waqiah.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SabulMunjiyat extends StatefulWidget {
  const SabulMunjiyat({Key? key}) : super(key: key);

  @override
  State<SabulMunjiyat> createState() => _SabulMunjiyatState();
}

class _SabulMunjiyatState extends State<SabulMunjiyat>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<Tab> tabs = [
    Tab(
      child: Text(
        "As-Sajdah",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Fushilat",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Yasin",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Ad-Dukhon",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Al-Waqiah",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Al-Hasyr",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Al-Mulk",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
  ];
  List<Widget> tabsContent = [
    Sajdah(),
    Fushilat(),
    Yasin(),
    Dukhon(),
    IniWaqiah(),
    Hasyr(),
    Mulk()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 68, 118, 218),
          title: Text("Sab'ul Munjiyat"),
          centerTitle: true,
          bottom: PreferredSize(
              child: TabBar(
                tabs: tabs,
                indicatorColor: Colors.white,
                isScrollable: true,
              ),
              preferredSize: Size.fromHeight(50)),
        ),
        body: TabBarView(children: tabsContent),
      ),
    );
  }
}
