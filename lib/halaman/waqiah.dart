import 'package:awrad/halaman/Istighosah.dart';
import 'package:awrad/halaman/cobadoaistighosah.dart';
import 'package:awrad/halaman/cobaistighosah.dart';
import 'package:awrad/halaman/cobawaqiah.dart';
import 'package:awrad/halaman/doa_istighosah.dart';
import 'package:awrad/halaman/doa_waqiah.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Waqiah extends StatefulWidget {
  const Waqiah({Key? key}) : super(key: key);

  @override
  _WaqiahState createState() => _WaqiahState();
}

class _WaqiahState extends State<Waqiah> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 118, 218),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 118, 218),
        centerTitle: true,
        title: Text(
          'Al-Waqiah',
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.white,
                          indicatorColor: Colors.white,
                          indicator: BoxDecoration(
                              color: Color.fromARGB(255, 68, 118, 218),
                              borderRadius: BorderRadius.circular(10)),
                          controller: tabController,
                          tabs: [
                            Tab(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Al-Waqiah',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Tab(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Doa',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: TabBarView(
                controller: tabController,
                children: [
                  IniWaqiah(),
                  Doa_Waqiah(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
