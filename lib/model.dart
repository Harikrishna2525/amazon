import 'package:flutter/material.dart';

class Model
{
  String? image;
  String? text;
  String? text1;
  String? text2;

  Model(this.image,this.text,this.text1,this.text2);
}
List krish= Hari.map((e) => Model(e["image"], e["text"], e["text1"],e["text2"],)).toList();
var Hari=[
  {"image":"assets/m1.jpg","text":"Nenjukulle","text1":"LYRICS","text2":"Shakthisree Gopalan",},
  {"image":"assets/m2.jpg","text":"ohh sayali","text1":"LYRICS","text2":"Sathyaprkash,chinmayil"},
  {"image":"assets/m3.jpg","text":"Kadhalada","text1":"LYRICS","text2":"Pradeep kumar"},
  {"image":"assets/m4.jpg","text":"Sahaana saaral ","text1":"LYRICS","text2":"Vijay yesudas"},
  {"image":"assets/m5.jpg","text":"Vizhye kalangathey ","text1":"LYRICS","text2":"Shakthisree gopalan"},
  {"image":"assets/m6.jpg","text":"tharame tharame ","text1":"LYRICS","text2":"Sid sriram"},
  {"image":"assets/m7.jpg","text":"Naan nee","text1":"LYRICS","text2":"Shakthisreegopalan"},
  {"image":"assets/m8.jpg","text":"Verratama veraturiye ","text1":"LYRICS","text2":"Shakthisreegopan,G.V"},
  {"image":"assets/m9.jpg","text":"Nee singam than","text1":"LYRICS","text2":"A.R.Rahuman"},
  {"image":"assets/m10.jpg","text":"Aalaporan Thamizan","text1":"LYRICS","text2":"A.R.Rahuman"},


];











// class Model
// {
//   String? image;
//   String? text;
//
//   Model(this.image,this.text);
// }
// List music=spotify.map((e) => Model(e["image"], e["text"])).toList();
// var spotify=[
//   {"image":"assets/hp1.jpg","text":"Hello"},
//   {"image":"assets/hp2.jpg","text":"Hii"},
//   {"image":"assets/hp3.jpg","text":"Hey"}
// ];










