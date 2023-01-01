import 'dart:convert';
import 'package:awrad/model/model_birrul.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BirrulWalidayn extends StatefulWidget {
  const BirrulWalidayn({super.key});

  @override
  State<BirrulWalidayn> createState() => _BirrulWalidaynState();
}

class _BirrulWalidaynState extends State<BirrulWalidayn> {
  Future<List<ModelBirrul>> ReadJsonData() async {
    final JsonData =
        await rootBundle.rootBundle.loadString('assets/data/birrul.json');
    final list = json.decode(JsonData) as List<dynamic>;
    return list.map((e) => ModelBirrul.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: (Text(
            'Birrul Walidayn',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          ))),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<ModelBirrul>;
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
                                    textAlign: TextAlign.end,
                                    items[index].arabic.toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "LPMQ IsepMisbah",
                                        fontWeight: FontWeight.w500,
                                        height: 2.5),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(
                                    textAlign: TextAlign.justify,
                                    items[index].arti.toString(),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: "PlusJakartaSans",
                                        fontWeight: FontWeight.normal,
                                        height: 1.5,
                                        color: rootBundle.Color.fromARGB(
                                            255, 109, 109, 109)),
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
