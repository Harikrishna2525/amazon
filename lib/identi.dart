import 'package:flutter/material.dart';

class Model
{
  String? image;

  Model(this.image);
}

List mie=mine.map((e) => Model(e["image"])).toList();
var mine=[
  {"image":"assets/hk1.jpg"},
  {"image":"assets/hk2.jpg"},
  {"image":"assets/hk3.jpg"},
  {"image":"assets/hk4.jpg"},
  {"image":"assets/hk5.JPG"},
  {"image":"assets/hk6.jpg"},
  {"image":"assets/hk7.jpg"},
  {"image":"assets/hk8.jpg"},
  {"image":"assets/hk9.jpg"},
  {"image":"assets/hk10.jpg"},
  {"image":"assets/hk11.jpg"},
  {"image":"assets/hk12.jpg"},
  {"image":"assets/hk13.jpg"},
  {"image":"assets/hk14.jpg"},
  {"image":"assets/hk15.jpg"},
  // {"image":"hk16.jpg"},
  // {"image":"hk17.jpg"},
  // {"image":"hk18.jpg"},

];
//
class Modelone
{
  String?image;
  String? text;

  Modelone(this.image,this.text);
}
List lights=high.map((e) => Modelone(e["image"],e["text"])).toList();
var high=[
  {"image":"assets/hk1.jpg","text":"😈Drug🥵"},
  {"image":"assets/hig1.jpg","text":"🤍✨💙"},
  {"image":"assets/hig2.jpg","text":"🖤"},
  {"image":"assets/hig5.jpg","text":"🧑‍🤝‍🧑Dhostu💪"},
  {"image":"assets/hig3.png","text":"❤️‍🔥K S C🔥"},
  {"image":"assets/hk3.jpg","text":"👶Childhood💙"},
  {"image":"assets/hig4.png","text":"Mad💋"}
];
//
class ModelHk
{
  String? image;

  ModelHk(this.image);
}
List reel=reels.map((e) => ModelHk(e["image"])).toList();
var reels=[
  {"image":"assets/sec1.jpg"},
  {"image":"assets/sec2.jpg"},
  {"image":"assets/sec3.jpg"},
  {"image":"assets/sec4.jpg"},
  {"image":"assets/sec5.jpg"},
  {"image":"assets/sec6.jpg"},
];
//
class Modeltag
{
  String? image;

  Modeltag(this.image);
}
List lass=las.map((e) => Modeltag(e["image"])).toList();
var las=[
  {"image":"assets/third1.jpg"},
  {"image":"assets/third2.jpg"},
  {"image":"assets/third3.jpg"},
  {"image":"assets/third4.jpg"},
  {"image":"assets/third5.jpg"},
  {"image":"assets/third6.jpg"},

];
//

// class Modelwhats
// {
//   String? image;
//
//   Modelwhats(this.image);
// }
// List wat=wa.map((e) => Modelwhats(e["image"])).toList();
// var wa =[
//   {"image":"assets/w1.jpg"},
//   {"image":"assets/w2.jpg"},
//   {"image":"assets/w3.jpg"},
//   {"image":"assets/w4.jpg"},
//   {"image":"assets/w5.jpg"},
//
// ];