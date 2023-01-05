import 'dart:convert';
import 'package:awrad/model/model_istighosah.dart';
import 'package:awrad/model/model_tawassul.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zoom_widget/zoom_widget.dart';

class IniIstighosah extends StatefulWidget {
  const IniIstighosah({super.key});

  @override
  State<IniIstighosah> createState() => _IniIstighosahState();
}

class _IniIstighosahState extends State<IniIstighosah> {
  Future<List<ModelIstighosah>> ReadJsonData() async {
    final JsonData =
        await rootBundle.rootBundle.loadString('assets/data/istighosah.json');
    final list = json.decode(JsonData) as List<dynamic>;
    return list.map((e) => ModelIstighosah.fromJson(e)).toList();
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
            var items = data.data as List<ModelIstighosah>;
            return ListView.builder(
                itemCount: items == null ? 0 : items.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(color: Colors.white),
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Container(
                          //   width: 50,
                          //   height: 50,
                          // ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(
                                bottom: 8, left: 20, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: SelectableText(
                                    textAlign: TextAlign.end,
                                    items[index].arabic.toString(),
                                    style: const TextStyle(
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
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
