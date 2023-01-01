import 'dart:convert';
import 'package:awrad/model/model_doaistighosah.dart';
import 'package:awrad/model/model_tawassul.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IniDoaIstighosah extends StatefulWidget {
  const IniDoaIstighosah({super.key});

  @override
  State<IniDoaIstighosah> createState() => _IniDoaIstighosahState();
}

class _IniDoaIstighosahState extends State<IniDoaIstighosah> {
  Future<List<Modeldoaistighosah>> ReadJsonData() async {
    final JsonData = await rootBundle.rootBundle
        .loadString('assets/data/doa_istighosah.json');
    final list = json.decode(JsonData) as List<dynamic>;
    return list.map((e) => Modeldoaistighosah.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     centerTitle: true,
      //     title: (Text(
      //       'Tawassul',
      //       style: TextStyle(
      //           fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
      //     ))),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<Modeldoaistighosah>;
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Container(
                          //   width: 50,
                          //   height: 50,
                          // ),
                          Expanded(
                              child: Container(
                            padding:
                                EdgeInsets.only(bottom: 8, left: 20, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(
                                    textAlign: TextAlign.justify,
                                    items[index].arabic.toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "LPMQ IsepMisbah",
                                        fontWeight: FontWeight.w500,
                                        height: 2.5),
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            // show circular progress while data is getting fetched from json file
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      //
    );
  }
}
