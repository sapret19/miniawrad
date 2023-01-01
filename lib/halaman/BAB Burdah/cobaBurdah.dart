import 'dart:convert';
import 'package:awrad/halaman/Istighosah.dart';
import 'package:awrad/halaman/doa_istighosah.dart';
import 'package:awrad/model/model_burdah1.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/material.dart';
import 'package:awrad/halaman/BAB Burdah/BAB_1.dart';

class CobaBurdah extends StatefulWidget {
  const CobaBurdah({super.key});

  @override
  State<CobaBurdah> createState() => _CobaBurdahState();
}

class _CobaBurdahState extends State<CobaBurdah> {
  Future<List<ModelBurdah1>> ReadJsonData() async {
    final JsonData =
        await rootBundle.rootBundle.loadString('assets/data/burdah1.json');
    final list = json.decode(JsonData) as List<dynamic>;
    return list.map((e) => ModelBurdah1.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(211, 235, 234, 234),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Burdah',
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
      ),
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
                    padding: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(color: Colors.white),
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              bottom: 8, left: 20, right: 15),
                          child: (Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(
                                      textAlign: TextAlign.end,
                                      items[index].arabic.toString(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'LMPQ IsepMisbah',
                                          fontWeight: FontWeight.w500,
                                          height: 2.5),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(
                                      textAlign: TextAlign.start,
                                      items[index].arabic2.toString(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: "LMPQ IsepMisbah",
                                          fontWeight: FontWeight.w500,
                                          height: 2.5),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                        ),
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
