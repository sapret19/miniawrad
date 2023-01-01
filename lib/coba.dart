import 'package:awrad/doa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class coba extends StatefulWidget {
  const coba({super.key});

  @override
  State<coba> createState() => _cobaState();
}

class _cobaState extends State<coba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return doacontoh();
              }));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  margin: EdgeInsets.only(top: 0),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                Container(
                  
                    // BIRRUL WALIDAYN
                    width: 150,
                    height: 140,
                    transform: Matrix4.translationValues(0, -40, 2),
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 68, 118, 218),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: ExactAssetImage('assets/images/birrul.png'),
                            alignment: Alignment(0, -0.5)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 20, 20, 20)
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
              ],
            )),
      ),
    );
  }
}
