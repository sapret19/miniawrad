import 'package:awrad/halaman/Diba/diba1.dart';
import 'package:awrad/halaman/Diba/diba10.dart';
import 'package:awrad/halaman/Diba/diba11.dart';
import 'package:awrad/halaman/Diba/diba12.dart';
import 'package:awrad/halaman/Diba/diba13.dart';
import 'package:awrad/halaman/Diba/diba14.dart';
import 'package:awrad/halaman/Diba/diba15.dart';
import 'package:awrad/halaman/Diba/diba12.dart';
import 'package:awrad/halaman/Diba/diba16.dart';
import 'package:awrad/halaman/Diba/diba17.dart';
import 'package:awrad/halaman/Diba/diba18.dart';
import 'package:awrad/halaman/Diba/diba19.dart';
import 'package:awrad/halaman/Diba/diba2.dart';
import 'package:awrad/halaman/Diba/diba20.dart';
import 'package:awrad/halaman/Diba/diba21.dart';
import 'package:awrad/halaman/Diba/diba22.dart';
import 'package:awrad/halaman/Diba/diba23.dart';
import 'package:awrad/halaman/Diba/diba24.dart';
import 'package:awrad/halaman/Diba/diba25.dart';
import 'package:awrad/halaman/Diba/diba26.dart';
import 'package:awrad/halaman/Diba/diba27.dart';
import 'package:awrad/halaman/Diba/diba28.dart';
import 'package:awrad/halaman/Diba/diba3.dart';
import 'package:awrad/halaman/Diba/diba4.dart';
import 'package:awrad/halaman/Diba/diba5.dart';
import 'package:awrad/halaman/Diba/diba6.dart';
import 'package:awrad/halaman/Diba/diba7.dart';
import 'package:awrad/halaman/Diba/diba8.dart';
import 'package:awrad/halaman/Diba/diba9.dart';
import 'package:awrad/halaman/Diba/model.dart';
import 'package:awrad/halaman/DoaTahlil.dart';
import 'package:awrad/halaman/Tahlil.dart';
import 'package:awrad/halaman/Yasin.dart';
import 'package:flutter/material.dart';

class Diba extends StatefulWidget {
  const Diba({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<Diba> with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<Tab> tabs = [
    Tab(
      child: Text(
        "Ya Rabbi shalli...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Laqod jaakum...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Ya Rasulallah...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Al-hamdulillahil qawiyy...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Qila huwa adam...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Yub'atsu min tihamah...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Tsumma ardudduhu...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Shalatullahi ma lahat...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Fasubhanaman khashshahu...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Awwalu ma nastaftihu...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Al-haditsul awwal...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Al-haditsul tsani...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Fayaqulul haqqu...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Ahdliru qulubakum...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Fahtazzal arsyu...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Mahallul Qiyam...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Wawulida shallallahu...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Qila man yakfulu...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Tsumma a'radla...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Fabainama huwa dzata...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Faqolatil malaikatu...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Fabainama habibu...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Falamma ra'athu...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        'Wa kana shallallahu...',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Wa qila liba'dhihim...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Wa ma 'asa an yuqala...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Ya badratim...",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
    Tab(
      child: Text(
        "Doa Maulid Diba'",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    ),
  ];
  List<Widget> tabsContent = [
    Diba1(),
    Diba2(),
    Diba3(),
    Diba4(),
    Diba5(),
    Diba6(),
    Diba7(),
    Diba8(),
    Diba9(),
    Diba10(),
    Diba11(),
    Diba12(),
    Diba13(),
    Diba14(),
    Diba15(),
    Diba16(),
    Diba17(),
    Diba18(),
    Diba19(),
    Diba20(),
    Diba21(),
    Diba22(),
    Diba23(),
    Diba24(),
    Diba25(),
    Diba26(),
    Diba27(),
    Diba28(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 68, 118, 218),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 68, 118, 218),
            centerTitle: true,
            title: const Text(
              'Maulid Diba',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
            ),
            bottom: PreferredSize(
                child: TabBar(
                  tabs: tabs,
                  indicatorColor: Colors.white,
                  isScrollable: true,
                ),
                preferredSize: Size.fromHeight(50)),
          ),
          body: TabBarView(children: tabsContent)),
    );
  }
}
