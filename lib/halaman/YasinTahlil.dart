import 'package:awrad/halaman/DoaTahlil.dart';
import 'package:awrad/halaman/Tahlil.dart';
import 'package:awrad/halaman/Yasin.dart';
import 'package:flutter/material.dart';

class YasinTahlil extends StatefulWidget {
  const YasinTahlil({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<YasinTahlil>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
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
        title: const Text(
          'Yasin dan Tahlil',
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          // transform: Matrix4.translationValues(0, -50, 1),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                // height: 50,
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
                        // indicatorWeight: 2,
                        indicator: BoxDecoration(
                          color: Color.fromARGB(255, 68, 118, 218),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        controller: tabController,
                        tabs: const [
                          Tab(
                            child: Text(
                              'Yasin',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Tahlil',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Doa',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    Yasin(),
                    Tahlil(),
                    DoaTahlil(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
