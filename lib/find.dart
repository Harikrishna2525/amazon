
class Model
{
  String? image;
  String? text;
  String? text1;
  Model(this.image,this.text,this.text1);
}
List song=spoti.map((e) => Model(e["image"],e["text"],e["text1"])).toList();

var spoti=[
  {"image":"assets/t1.jpg","text":"Tamil BAE","text1":"Best love songs Before"},
  {"image":"assets/t2.jpg","text":"Purely Kaadhal","text1":"All the mushy feels from"},
  {"image":"assets/t3.jpg","text":"Tamil Romance","text1":"The best in romantic tunes"},
  {"image":"assets/t4.jpg","text":"Happy vibes Tamil","text1":"Boost your mood with"},
];


