import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class hom extends StatefulWidget {
  const hom({super.key});

  @override
  State<hom> createState() => _homState();
}

class _homState extends State<hom> {
  int currentindex=0;

  List Hari=[
    "assets/amaz 1.png",
    "assets/amaz 3.jpg",
    "assets/amaz 4.jpg",
    "assets/amaz 5.jpg",

  ];
   List phone=[
    "assets/hpp1.jpg",
    "assets/hpp 3.jpg",
    "assets/hpp 4.jpg",
    "assets/phh 1.png",
    "assets/phh 2.jpg",
    "assets/phh 3.jpg",
    "assets/phh 4.jpg",
    "assets/phh 5.jpg",

  ];
   List Amaz=[
     "hp i3 11th gen",
     "hp i3 12th gen",
     "Victus Ryzen 3",
     "mi 11 pro",
     "galaxy 12",
     "vivo y82",
     "vivo y63",
     "vivo y63",
  ];
   List rate=[
     "Rs.39,000",
     "Rs.42,000",
     "Rs.72,000",
     "Rs.22,000",
     "Rs.18,000",
     "Rs.24,000",
     "Rs.20,000",
     "Rs.20,000",
   ];
   List rupe=[
     "M.R.P RS.30,000",
     "M.R.P RS.38,000",
     "M.R.P RS.50,000",
     "M.R.P RS.20,000",
     "M.R.P RS.15,000",
     "M.R.P RS.20,000",
     "M.R.P RS.10,000",
     "M.R.P RS.10,000",
   ];
  @override
  Widget build(BuildContext context) {
  //  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(0xff002648)));
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Text("11.39 Am"),
        // ),
        title:Container(
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(Icons.search),
              hintText: "Search Amazon Business",
              suffixIcon:Container(
                width:80,
                child: Row(
                  children: [
                    Icon(Icons.qr_code_scanner,size: 21,),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(Icons.keyboard_voice_outlined),
                    ),
                  ],

                ),
              ),
            ),
          ),

        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.qr_code_outlined,size: 26,),
          )
        ],
        // actions: [
        //   Icon(Icons.alarm),
        //   Icon(Icons.lte_mobiledata),
        //   Icon(Icons.signal_cellular_alt),
        //   Icon(Icons.battery_full),
        //   Text("72%")
        // ],
        ),
      body: ListView(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       prefixIcon: Icon(Icons.search),
          //       hintText: "Search Amazon Business",
          //       border: OutlineInputBorder(),
          //       suffixIcon:Container(
          //         width:60,
          //         child: Row(
          //           children: [
          //             Icon(Icons.qr_code_scanner,size: 21,),
          //             Icon(Icons.keyboard_voice_outlined),
          //           ],
          //         ),
          //       ),
          //     ),
          //
          //   ),
          // ),
          ListTile(
            leading: Icon(Icons.location_on_outlined,color: Colors.white),
            title: Text("Deliver to CLASSIC...-coimbatore641008",style: TextStyle(fontSize: 14,color: Colors.white),),
            trailing: Icon(Icons.keyboard_arrow_down_rounded),
            tileColor: Color(0xff007fbc),

          ),
          Container(
            height: 60,
            width: 420,
            color: Color(0xffe1fafe),

            child:Column(

              children: [

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Tip: Add people to your business account",
                    style: TextStyle(fontSize: 18,),textAlign: TextAlign.left,),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Use Amazon Business App",
                    style: TextStyle(color: Colors.purple,fontSize: 15),),
                ),
              ]
            ),


          ),
          Container(
            height: 200,
            child: CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 16/9,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 850),
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentindex=index;
                    });
                  }
                ),itemCount: Hari.length,
               itemBuilder:(BuildContext context,int index,int){
                  return Container(
                    height: 100,
                    width: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Hari[index]),
                        fit: BoxFit.fill
                  
                      )
                    ),
                  );
               }

            ),


          ),
          DotsIndicator(
              dotsCount: 5,
            position: currentindex
          ),
          Container(
            height: 142,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount:phone.length ,
                itemBuilder:(BuildContext  context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(

                      border: Border.all(width: 3,color: Colors.black12),
                    ),
                    child: Column(
                      children: [
                        Text("Buy it again",style: TextStyle(fontWeight: FontWeight.bold),),

                        Container(
                          height: 79,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(phone[index])
                            ),
                          ),
                        ),
                        Text("Rs.27,000"),
                      ],
                    ),
                  ),
                );

                }
            ),
          ),
          Text("pick up where you left off",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 750,
              width: double.infinity,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 3,
                ),
                itemCount: phone.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.grey)
                      ),

                      height: 320,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(phone[index]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Text(Amaz[index]),
                          Text(rate[index], style: TextStyle(decoration: TextDecoration.lineThrough)),
                          Text(rupe[index]),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.indigoAccent,
                                  ),
                                    child: Text(" save 24%", style: TextStyle(color: Colors.black)),
                                ),
                              ),
                              Text("on 2+ units"),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )


        ],
      ),



      );


  }
}
