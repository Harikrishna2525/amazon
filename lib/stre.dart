import 'package:flutter/material.dart';

class Modelwhats
{
  String? image;
  String? text;
  String? text1;
  String? text2;
  String? text3;

  Modelwhats(this.image,this.text,this.text1,this.text2,this.text3);
}
List mess=wa.map((e) => Modelwhats(e["image"],e["text"],e["text1"],e["text2"],e["text3"])).toList();
var wa =[
  {"image":"assets/w.jpg","text":"❣️Amma🙏🌍‍","text1":"8.15 AM","text2":"serii ma","text3":"Amma"},
  {"image":"assets/w1.jpg","text":"🤍Wifey🌍","text1":"8.15 AM","text2":"🫂😍","text3":"Wifey"},
  {"image":"assets/w2.jpg","text":"Business managments","text1":"10.20 AM","text2":"Boys get ready to fly","text3":"Business"},
  {"image":"assets/w3.jpg","text":"TEAM WOLF TRAINERS","text1":"9.15 AM","text2":"Mrng 2 clients master","text3":"Wolf"},
  {"image":"assets/w4.jpg","text":"Padma ka","text1":"11.15 PM","text2":"okey kaw","text3":"padma ka"},
  {"image":"assets/w5.jpg","text":"🧑‍🤝‍🧑Suresh uhh","text1":"5.15 AM","text2":"Bruh","text3":"Suresh"},
  {"image":"assets/w6.jpg","text":"🧑‍🤝‍🧑Gp🫂","text1":"10.05 AM","text2":"Mapla apply this da","text3":"Gp"},
  {"image":"assets/w7.jpg","text":"🧑‍🤝‍🧑Harivishwa mapla😈","text1":"9.02 PM","text2":"mapla vanthu pickup panniko","text3":"Harivishwa.."},
  {"image":"assets/w8.jpg","text":"🧑‍🤝‍🧑Asief machii","text1":"11.49 AM","text2":"Daii mapla","text3":"Asief"},
  {"image":"assets/w9.jpg","text":"❤️‍🔥Divakar","text1":"10.19 AM","text2":"okey nanba","text3":"Divakar"},
  {"image":"assets/w10.jpg","text":"Kanna na","text1":"01.17 pM","text2":"okey na","text3":"Kanna na"},
  {"image":"assets/w11.jpg","text":"Dharshan","text1":"5.15 AM","text2":"serii pa","text3":"Dharshan "},
  {"image":"assets/w12.jpg","text":"🧑‍🤝‍🧑Purusoth mapla","text1":"12.10 AM","text2":"😂serii da mapla","text3":"Purusoth.."},
  {"image":"assets/w13.jpg","text":"🧑‍🤝‍🧑Partha frnd","text1":"4.50 AM","text2":"varumpothu eduthutu varen","text3":"partha"},

];
//
class Modelcall
{
  String? image;
  String? text;
  String? textone;
  String? texttwo;

  Modelcall(this.image,this.text,this.textone,this.texttwo);
}
List col=cl.map((e) => Modelcall(e["image"],e["text"],e["textone"],e["texttwo"])).toList();
var cl=[
  {"image":"assets/w.jpg","text":"❤️‍Amma🌍","textone":"↙12/28/23, 9.26 PM","texttwo":"📞"},
  {"image":"assets/w4.jpg","text":"Padma ka","textone":"↙12/28/23, 9.45 AM","texttwo":"📹"},
  {"image":"assets/w5.jpg","text":"🧑‍🤝‍🧑Suresh","textone":"↗12/05/23 10.12 AM","texttwo":"📞"},
  {"image":"assets/w6.jpg","text":"🧑‍🤝‍🧑Gp","textone":"↙01/12/24 11.12 PM","texttwo":"📹"},
  {"image":"assets/w8.jpg","text":"🧑‍🤝‍🧑Asief","textone":"↙28/10/23 10.50 PM","texttwo":"📞"},
  {"image":"assets/w7.jpg","text":"😈Harivishwa mapla🧑‍🤝‍🧑","textone":"↗12/18/23 10.51 AM","texttwo":"📞"},
  {"image":"assets/w5.jpg","text":"🧑‍🤝‍🧑Suresh","textone":"↗12/06/23 10.12 AM","texttwo":"📞"},
  {"image":"assets/w13.jpg","text":"🧑‍🤝‍🧑Partha frnd","textone":"↗01/13/24 10.13 AM","texttwo":"📹"},
  {"image":"assets/w12.jpg","text":"🧑‍🤝‍🧑Purusoth","textone":"↗01/11/24 06.12 PM","texttwo":"📹"},
  {"image":"assets/w13.jpg","text":"🧑‍🤝‍🧑Partha frnd","textone":"↙01/13/24 10.16 AM","texttwo":"📞"},
  {"image":"assets/w13.jpg","text":"🧑‍🤝‍🧑Partha frnd","textone":"↙01/13/24 10.18 AM","texttwo":"📞"},
  {"image":"assets/w12.jpg","text":"🧑‍🤝‍🧑Purusoth","textone":"↗01/11/24 06.45 PM","texttwo":"📞"},
];
//
class Modelins
{
  String? image;
  String? text;
  Modelins(this.image,this.text);
}
List lc=lic.map((e) => Modelins(e["image"],e["text"])).toList();
var lic = [
  {"image":"assets/hk2.jpg","text":"Your story"},
  {"image":"assets/w5.jpg","text":"aku_na_mata"},
  {"image":"assets/w6.jpg","text":"g_praveen"},
  {"image":"assets/w7.jpg","text":"Shadow_khan_222"},
  {"image":"assets/w8.jpg","text":"asief_.1910"},
  {"image":"assets/w9.jpg","text":"Divakar"},
  {"image":"assets/w10.jpg","text":"kanna_3247"},
  {"image":"assets/w12.jpg","text":"purusoth_"},
  {"image":"assets/w13.jpg","text":"mr_solo_artist"},
  {"image":"assets/w11.jpg","text":"dharshan"},
];