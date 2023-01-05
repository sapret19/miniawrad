import 'dart:convert';
import 'package:awrad/model/model_tawassul.dart';
import 'package:awrad/model/model_waqiah.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IniWaqiah extends StatefulWidget {
  const IniWaqiah({super.key});

  @override
  State<IniWaqiah> createState() => _IniWaqiahState();
}

class _IniWaqiahState extends State<IniWaqiah> {
  Future<List<ModelWaqiah>> ReadJsonData() async {
    final JsonData =
        await rootBundle.rootBundle.loadString('assets/data/waqiah.json');
    final list = json.decode(JsonData) as List<dynamic>;
    return list.map((e) => ModelWaqiah.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 68, 118, 218),
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
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: SelectableText(
                                    textAlign: TextAlign.end,
                                    items[index].arabic.toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "LPMQ IsepMisbah",
                                        fontWeight: FontWeight.w500,
                                        height: 2.5),
                                  ),
                                ),
                                // const SizedBox(height: 30),
                                // Align(
                                //   alignment: Alignment.centerLeft,
                                //   child: Text(
                                //     textAlign: TextAlign.left,
                                //     items[index].arti.toString(),
                                //     style: const TextStyle(
                                //         fontSize: 16,
                                //         fontFamily: "PlusJakartaSans",
                                //         fontWeight: FontWeight.normal,
                                //         height: 1.5,
                                //         color: rootBundle.Color.fromARGB(
                                //             255, 109, 109, 109)),
                                //   ),
                                // ),
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
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
