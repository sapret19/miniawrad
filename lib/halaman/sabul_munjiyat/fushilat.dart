import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../model/model_sabul_munjiyat/model_fushilat.dart';

class Fushilat extends StatefulWidget {
  const Fushilat({super.key});

  @override
  State<Fushilat> createState() => _FushilatState();
}

class _FushilatState extends State<Fushilat> {
  Future<List<ModelFushilat>> ReadJsonData() async {
    final JsonData =
        await rootBundle.rootBundle.loadString('assets/data/fussilat.json');
    final list = json.decode(JsonData) as List<dynamic>;
    return list.map((e) => ModelFushilat.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<ModelFushilat>;
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
                        crossAxisAlignment: CrossAxisAlignment.end,
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                // const SizedBox(
                                //   height: 30,
                                // ),
                                // Align(
                                //   alignment: Alignment.centerLeft,
                                //   child: Text(
                                //     textAlign: TextAlign.justify,
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
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
