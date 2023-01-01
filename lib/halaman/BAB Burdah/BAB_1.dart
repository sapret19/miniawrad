import 'dart:convert';
import 'package:awrad/model/model_burdah1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Burdah1 extends StatefulWidget {
  const Burdah1({super.key});

  @override
  State<Burdah1> createState() => _Burdah1State();
}

class _Burdah1State extends State<Burdah1> {
  Future<List<ModelBurdah1>> ReadJsonData() async {
    final JsonData =
        await rootBundle.rootBundle.loadString('assets/data/burdah1.json');
    final list = json.decode(JsonData) as List<dynamic>;
    return list.map((e) => ModelBurdah1.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     centerTitle: true,
      //     title: (Text(
      //       'Burdah',
      //       style: TextStyle(
      //           fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
      //     ))),
      body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<ModelBurdah1>;
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
                                  Container(
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
