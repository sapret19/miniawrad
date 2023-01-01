import 'dart:convert';
import 'dart:ui';

import 'package:awrad/model/model_waqiah.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Doa_Waqiah extends StatefulWidget {
  const Doa_Waqiah({super.key});

  @override
  State<Doa_Waqiah> createState() => _Doa_WaqiahState();
}

class _Doa_WaqiahState extends State<Doa_Waqiah> {
  Future<List<ModelWaqiah>> ReadJsonData() async {
    final JsonData = await rootBundle.loadString('assets/data/waqiah.json');
    final list = json.decode(JsonData) as List<dynamic>;
    return list.map((e) => ModelWaqiah.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: (Text(
            'Al-Waqiah',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          ))),
      body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<ModelWaqiah>;
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(color: Colors.white),
                      margin: EdgeInsets.symmetric(vertical: 1),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 8, left: 20, right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                      textAlign: TextAlign.end,
                                      items[index].arabic.toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "LMPQ IsepMisbah",
                                          fontWeight: FontWeight.w500,
                                          height: 2.5),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                      textAlign: TextAlign.end,
                                      items[index].arti.toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "LPMQ IsepMisbah",
                                          fontWeight: FontWeight.w500,
                                          height: 2.5),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
