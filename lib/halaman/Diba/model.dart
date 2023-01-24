import 'package:awrad/halaman/Diba/diba1.dart';
import 'package:awrad/halaman/DoaTahlil.dart';
import 'package:awrad/halaman/Tawassul.dart';
import 'package:awrad/halaman/doa_waqiah.dart';
import 'package:flutter/cupertino.dart';

class ModeleDiba {
  final String nama;
  final Widget link;

  ModeleDiba({required this.nama, required this.link});
}

final namadiba = [
  ModeleDiba(nama: 'Ya Rabbi shalli...', link: Diba1()),
  ModeleDiba(nama: 'Ya Rasulallah...', link: Diba1()),
  ModeleDiba(nama: 'Inna fatahna...', link: Diba1()),
  ModeleDiba(nama: 'Al-hamdulillahil qawiyy...', link: Diba1()),
  ModeleDiba(nama: 'Qila huwa adam...', link: Diba1()),
  ModeleDiba(nama: "Yub'atsu min tihamah...", link: Diba1()),
  ModeleDiba(nama: 'Tsumma ardudduhu...', link: Diba1()),
  ModeleDiba(nama: 'Shalatullahi ma lahat...', link: Diba1()),
  ModeleDiba(nama: 'Fasubhanaman khashshahu...', link: Diba1()),
  ModeleDiba(nama: 'Awwalu ma nastaftihu...', link: Diba1()),
  ModeleDiba(nama: 'Al-haditsul awwal...', link: Diba1()),
  ModeleDiba(nama: 'Al-haditsul tsani...', link: Diba1()),
  ModeleDiba(nama: 'Fayaqulul haqqu...', link: Diba1()),
  ModeleDiba(nama: 'Ahdliru qulubakum...', link: Diba1()),
  ModeleDiba(nama: 'Fahtazzal arsyu...', link: Diba1()),
  ModeleDiba(nama: 'Mahallul Qiyam...', link: Diba1()),
  ModeleDiba(nama: 'Wawulida shallallahu...', link: Diba1()),
  ModeleDiba(nama: 'Qila man yakfulu...', link: Diba1()),
  ModeleDiba(nama: "Tsumma a'radla...", link: Diba1()),
  ModeleDiba(nama: 'Fabainama habibu...', link: Diba1()),
  ModeleDiba(nama: "Falamma ra'athu...", link: Diba1()),
  ModeleDiba(nama: 'Wa kana shallallahu...', link: Diba1()),
  ModeleDiba(nama: "Wa qila liba'dhihim...", link: Diba1()),
  ModeleDiba(nama: "Wa ma 'asa an yuqala...", link: Diba1()),
  ModeleDiba(nama: 'Ya badratim...', link: Diba1()),
  ModeleDiba(nama: "Doa Maulid Diba'", link: Diba1()),
];
