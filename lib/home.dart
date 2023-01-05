import 'package:awrad/doa.dart';
import 'package:awrad/halaman/BAB%20Burdah/cobaBurdah.dart';
import 'package:awrad/halaman/Birrul.dart';
import 'package:awrad/halaman/BAB%20Burdah/Burdah.dart';
import 'package:awrad/halaman/Istighosah.dart';
import 'package:awrad/halaman/Istighosah_fix.dart';
import 'package:awrad/halaman/Tawassul.dart';
import 'package:awrad/halaman/YasinTahlil.dart';
import 'package:awrad/halaman/Yasin.dart';
import 'package:awrad/halaman/cobawaqiah.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Flexible(
                      child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(200, 6, 44, 139),
                      image: DecorationImage(
                          image:
                              ExactAssetImage('assets/images/gerbangdrone.jpg'),
                          alignment: Alignment(0, -1),
                          opacity: 220,
                          fit: BoxFit.fitWidth),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 248,
                          child: Container(
                            alignment: const Alignment(0, 0.65),
                            child: Text(
                              'Mini Awrad Santri',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/LogoApp.png',
                                      scale: 12),
                                  alignment: Alignment(0, -0.1))),
                        ),
                        Container(
                          height: 500,
                          margin: EdgeInsets.only(top: 54),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  //Tawassul Sek
                                  InkWell(
                                    onTap: () => setState(() {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Tawassul();
                                      }));
                                    }),
                                    child: Container(
                                        width: 150,
                                        height: 140,
                                        transform: Matrix4.translationValues(
                                            0, -40, 2),
                                        margin: EdgeInsets.only(right: 20),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 68, 118, 218),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            image: DecorationImage(
                                                image: ExactAssetImage(
                                                    'assets/images/tawassul.png'),
                                                alignment: Alignment(0, -0.5)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                        255, 20, 20, 20)
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 10,
                                                offset: Offset(0, 0),
                                              )
                                            ]),
                                        child: Container(
                                          alignment: Alignment(0, 0.7),
                                          child: Text(
                                            'Tawassul',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        )),
                                  ),

                                  // YASIN & TAHLIL
                                  InkWell(
                                    onTap: () => setState(() {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return YasinTahlil();
                                      }));
                                    }),
                                    child: Container(
                                        width: 150,
                                        height: 140,
                                        transform: Matrix4.translationValues(
                                            0, -60, 2),
                                        margin:
                                            EdgeInsets.only(top: 40, right: 20),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 68, 118, 218),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            image: DecorationImage(
                                                image: ExactAssetImage(
                                                    'assets/images/yasintahlil.png'),
                                                alignment: Alignment(0, -0.5)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                        255, 20, 20, 20)
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 10,
                                                offset: Offset(0, 0),
                                              )
                                            ]),
                                        child: Container(
                                          alignment: Alignment(0, 0.7),
                                          child: Text(
                                            'Yasin & Tahlil',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        )),
                                  ),
                                  // AL-WAQI'AH
                                  InkWell(
                                      onTap: () => setState(() {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return IniWaqiah();
                                            }));
                                          }),
                                      child: Container(
                                          width: 150,
                                          height: 140,
                                          transform: Matrix4.translationValues(
                                              0, -80, 2),
                                          margin: EdgeInsets.only(
                                              top: 40, right: 20),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 68, 118, 218),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              image: DecorationImage(
                                                  image: ExactAssetImage(
                                                      'assets/images/waqiah.png'),
                                                  alignment:
                                                      Alignment(0, -0.5)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                          255, 20, 20, 20)
                                                      .withOpacity(0.3),
                                                  spreadRadius: 3,
                                                  blurRadius: 10,
                                                  offset: Offset(0, 0),
                                                )
                                              ]),
                                          child: Container(
                                            alignment: Alignment(0, 0.7),
                                            child: Text(
                                              'Al-Waqiah',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                          )))
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () => setState(() {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return BirrulWalidayn();
                                      }));
                                    }),
                                    child: Container(
                                        // BIRRUL WALIDAYN
                                        width: 150,
                                        height: 140,
                                        transform: Matrix4.translationValues(
                                            0, -40, 2),
                                        margin: EdgeInsets.only(left: 20),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 68, 118, 218),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            image: DecorationImage(
                                                image: ExactAssetImage(
                                                    'assets/images/birrul.png'),
                                                alignment: Alignment(0, -0.5)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                        255, 20, 20, 20)
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 10,
                                                offset: Offset(0, 0),
                                              )
                                            ]),
                                        child: Container(
                                          alignment: Alignment(0, 0.7),
                                          child: Text(
                                            'Birrul Walidayn',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        )),
                                  ),
                                  // ISTIGHOSAH
                                  InkWell(
                                    onTap: () => setState(() {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Istighosah_fix();
                                      }));
                                    }),
                                    child: Container(
                                        width: 150,
                                        height: 140,
                                        transform: Matrix4.translationValues(
                                            0, -60, 2),
                                        margin:
                                            EdgeInsets.only(top: 40, left: 20),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 68, 118, 218),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            image: DecorationImage(
                                                image: ExactAssetImage(
                                                    'assets/images/istighosah.png'),
                                                alignment: Alignment(0, -0.5)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                        255, 20, 20, 20)
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 10,
                                                offset: Offset(0, 0),
                                              )
                                            ]),
                                        child: Container(
                                          alignment: Alignment(0, 0.7),
                                          child: Text(
                                            'Istighosah',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        )),
                                  ),
                                  // BURDAH
                                  InkWell(
                                      onTap: () => setState(() {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return Burdah();
                                            }));
                                          }),
                                      child: Container(
                                          width: 150,
                                          height: 140,
                                          transform: Matrix4.translationValues(
                                              0, -80, 2),
                                          margin: EdgeInsets.only(
                                              top: 40, left: 20),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 68, 118, 218),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              image: DecorationImage(
                                                  image: ExactAssetImage(
                                                      'assets/images/burdah.png'),
                                                  alignment:
                                                      Alignment(0, -0.5)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                          255, 20, 20, 20)
                                                      .withOpacity(0.3),
                                                  spreadRadius: 3,
                                                  blurRadius: 10,
                                                  offset: Offset(0, 0),
                                                )
                                              ]),
                                          child: Container(
                                            alignment: Alignment(0, 0.7),
                                            child: Text(
                                              'Burdah',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                          )))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
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
