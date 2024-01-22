import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class prod extends StatefulWidget {
  const prod({super.key});

  @override
  State<prod> createState() => _prodState();
}

class _prodState extends State<prod> {
  int currentindex=0;

  List lp=[
    "assets/lap.jpg",
    "assets/lap 2.jpg",
    "assets/lap 3.jpg",
    "assets/lap 4.jpg",

  ];
  String dropdownvalue = '1';
  var Qty = [
    '1',
    '2',
    '3',
    '4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.arrow_back_sharp),
        title: Container(
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(Icons.search),
              hintText: "Search Amazon Business",
              border: OutlineInputBorder(),
              suffixIcon: Container(
                width: 60,
                child: Row(
                  children: [
                    Icon(Icons.qr_code_scanner,size: 26),
                    Icon(Icons.keyboard_voice_outlined),
                  ],
                ),
              ),
            ),

          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 300,
                      aspectRatio: 16/9,
                      autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                      // autoPlay: true,
                      autoPlayInterval: Duration(milliseconds: 800),
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: true,
                      reverse: false,
                      onPageChanged: (index,reason){
                        setState(() {
                          currentindex=index;
                        });
                      }
                    ),itemCount:lp.length ,
                  itemBuilder: (BuildContext context,int index,int){
                      return Container(
                        height: 400,
                        width: 420,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(lp[index]),
                          )
                        ),

                      );
                  }
                ),
                Positioned(

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffc10800),
                        radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("20% ",style: TextStyle(color: Colors.white,fontSize: 14),),
                            Text("off",style: TextStyle(color:Colors.white,fontSize: 14),),
                          ],

                        ),

                      ),

                      ),
                    ),
                ),
                Positioned(
                  top: 15,
                    right: 20,

                    child:Icon(Icons.share) ),
                Positioned(
                    child:Icon(Icons.bookmark,size: 28,),
                  bottom: 0,
                  left: 0,



                ),
              ],
            ),
            Center(
              child: DotsIndicator(
                  dotsCount: 4,
              position: currentindex),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Brand:HP",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hp 15s 12th Gen intel core i3-123U 15/6 inch(39.6 cm)"
                  "FHD Anti-glare ,8GB RAM,512GB SSD, intel lris xe Graphics"
                  "Dual speakers,Backlit Kb(Win 11 Home,Natural sliver ,1.69kg)",style: TextStyle(fontSize: 18),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 26,
                    width: 140,
                    color: Colors.purple,

                    child: Center(child: Text("Amazon's choice",style: TextStyle(color:Colors.white))),


                  ),
                ),

                Text("for hp laptop i5 12th generation",style: TextStyle(fontSize: 15),)
              ],
            ),
            Divider(
              height: 10,
              thickness: 2,
              color: Colors.grey,
            ),
              Container(
               height: 100,
               width: 300,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Size: 8GB + 512 SSD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
                   ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xfffff8f1),
                         shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5))
                       ),
                       onPressed: (){},
                       child: Text("8GB +512 SSD",style: TextStyle(fontWeight: FontWeight.bold),))
                 ],

               ),
             ),
            Divider(
              height: 10,
              thickness: 2,
              color: Colors.grey,
            ),
            Row(
              children: [
                // Text("Style name: i5 12th gen"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("i5 11th gen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                        Divider(
                          height: 5,
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("₹48,519",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("₹60.599.00",style: TextStyle(decoration: TextDecoration.lineThrough),),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                            child: Text("In stock",)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)
                    ),


                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("i5 12th gen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                        Divider(
                          height: 5,
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("₹51,990",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("₹65,387.00",style: TextStyle(decoration: TextDecoration.lineThrough),),
                        ),
                        Center(child: Text("In stock"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 2,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("₹51,990",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('MRP:\u{20B9}65,387',style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 20),),
                  Text(" save ₹13,397",style: TextStyle(color: Color(0xffb21800),fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                text: "EMI",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,fontWeight: FontWeight.bold
                      ),
                children: [
                  TextSpan(
                    text: " from ₹2,521.No Cost EMI available.EMI",
                      style: TextStyle(fontSize: 16,),
                  )
                ]

              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("options",style: TextStyle(color: Color(0xff007285),fontSize: 16,fontStyle: FontStyle.normal),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("FREE DELIEVERY",style: TextStyle(fontStyle: FontStyle.normal,fontSize: 16,color: Color(0xff007285),fontWeight: FontWeight.bold),),
            ),
            Divider(
              height: 10,
              thickness: 2,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.currency_exchange),
              title: Column(
                children: [
                  Text("Exchange your old product",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("save upto ₹11,900",style: TextStyle(color: Color(0xff007285)),)
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(
              height: 10,
              thickness: 2,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.personal_injury_outlined),
              title: Column(
                children: [
                  Text("Add laptop set-up service",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Expert service at your doorstep",style: TextStyle(color: Color(0xff007285)),)
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(
              height: 10,
              thickness: 2,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.shield_moon_outlined),
              title: Column(
                children: [
                  Text("Protect your laptop",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Extra protection against device failure",style: TextStyle(color: Color(0xff007285)),)
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(
              height: 10,
              thickness: 2,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Total : ₹51,990",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                text: "Free delievery",style: TextStyle(color: Color(0xff007285),fontSize: 18),
                children: [
                  TextSpan(
                    text: " Thursday,4 january",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),
                  ),
                  TextSpan(
                    text: ".Details",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff007285))
                  ),
                ]
              )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                text: "or fastest delivery",style: TextStyle(color: Color(0xff007285),fontSize: 18)
              )),
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined,color: Color(0xff007285),),
                Text("Deliver to classic... coimbatore 641-008",style: TextStyle(color: Color(0xff007285),fontSize: 20),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("In Stock",style: TextStyle(fontSize: 20),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Quantity :",style: TextStyle(fontSize: 16),),
                ),
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffd8dad9),width: 1),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffd8dad9),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFf0f2f1),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                      )
                    ],
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        DropdownButton(

                          // Initial Value
                          value: dropdownvalue,
                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: Qty.map((String Qty) {
                            return DropdownMenuItem(
                              value: Qty,
                              child: Text(Qty,style: TextStyle(
                                  fontSize: 25
                              ),),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Buying in Bulk?",style: TextStyle(fontSize: 18,color: Color(0XFF007285)),),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),onPressed: (){}, child: Center(child: Text("Add to cart",style: TextStyle(color: Colors.black),))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent,),onPressed: (){}, child: Center(child: Text("Buy now",style: TextStyle(color: Colors.black),))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.lock,),
                  Text(" Secure transaction",style: TextStyle(color: Color(0xff007285),fontSize: 20),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

