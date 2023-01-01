import 'package:awrad/halaman/Istighosah.dart';
import 'package:awrad/halaman/cobadoaistighosah.dart';
import 'package:awrad/halaman/cobaistighosah.dart';
import 'package:awrad/halaman/doa_istighosah.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Istighosah_fix extends StatefulWidget {
  const Istighosah_fix({Key? key}) : super(key: key);

  @override
  _Istighosah_fixState createState() => _Istighosah_fixState();
}

class _Istighosah_fixState extends State<Istighosah_fix>
    with SingleTickerProviderStateMixin {
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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Istighosah',
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
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          controller: tabController,
                          tabs: [
                            Tab(
                              child: Text(
                                'Istighosah',
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
                  IniIstighosah(),
                  IniDoaIstighosah(),
                ],
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 55,
          child: Center(
            child: Text(
              '© annur2malang',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
            ),
          ),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 82, 82, 82).withOpacity(0.25),
                offset: Offset(0, 0),
                blurRadius: 4,
                spreadRadius: 4)
          ]),
        ),
      ),
    );
  }
}
