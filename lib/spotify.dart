import 'package:amazon/find.dart';
import 'package:amazon/model.dart';
import 'package:flutter/material.dart';

class spot extends StatefulWidget {
  const spot({super.key});

  @override
  State<spot> createState() => _spotState();
}

class _spotState extends State<spot> {
  List music=[
    "assets/m1.jpg",
    "assets/m2.jpg",
    "assets/m3.jpg",
    "assets/m4.jpg",
    "assets/m5.jpg",
    "assets/m6.jpg",
    "assets/m7.jpg",
    "assets/m8.jpg",
    "assets/m9.jpg",
    "assets/m10.jpg",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return[SliverAppBar(
          leading: Icon(Icons.arrow_back_sharp),
          expandedHeight: 600,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff7e5454),Color(0xff402e2d)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Stack(
              children: [
                FlexibleSpaceBar(
                  title: Text("Valentine's Day Tamil"),
                  background: Column(
                    children: [
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           SizedBox(
                             height: 50,
                             width: 280,
                             child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search,color: Colors.white,),
                                hintText: "Find the playlist",
                                hintStyle: TextStyle(color: Colors.white70),
                                border: OutlineInputBorder(
                                ),
                              ),
                             ),
                           ),
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white54,
                              ),
                            ),
                            child: Center(child: Text("Sort",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height:280,
                          width: 280,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/naan.png"),
                               fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                          child: Text(" Kondaduvom Kaadhal Thiruvizhal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),)),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/music.png"),
                                ),

                              ),
                            ),
                          ),
                          Text("Spotify",style: TextStyle(color: Colors.white,fontSize: 16),)
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                          child: Text(" 84,050 likes. 5h 23min",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.heart_broken_outlined,color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_circle_down),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.do_not_disturb_on_total_silence),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.shuffle,color: Colors.grey,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.play_circle,color: Colors.green,size: 40,),
                                ),
                              ],
                            ),
                          )
                        ],
                      )


                    ],
                  ),

                ),

              ],
            ),
          ),





        )];
      }, body: SingleChildScrollView(
        child: Container(
          height: 900,
          width: 400,
          color: Color(0xff121212),
          child: Column(
            children: [
              Container(
                height: 300,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: krish.length,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(krish[index].image),fit: BoxFit.fill
                            )
                          ),
                        ),
                        title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(krish[index].text,style: TextStyle(color: Colors.white),),
                            Row(
                              children: [
                                Container(
                                  height: 14,
                                  width: 50,
                                  color: Colors.grey,
                                  child: Center(child: Text(krish[index].text1,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text( krish[index].text2,style: TextStyle(color: Colors.grey,fontSize: 14),),
                                ),
                              ],
                            )
                          ],
                        ),
                        trailing: Icon(Icons.more_vert),
                      ),
                    );
                    }
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("You might also like",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                  )),
              Container(
                height: 300,
                width: 400,
                // color: Colors.white,
                child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 12,


                    ), itemCount: song.length,
                    itemBuilder:(BuildContext context, int index){
                      return Column(
                        children: [
                          Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(song[index].image)
                              )
                            ),

                          ),
                          Text(song[index].text,style: TextStyle(color: Colors.white,fontSize: 18),),
                          Text(song[index].text1,style: TextStyle(color: Colors.grey,fontStyle: FontStyle.normal),)
                        ],
                      );
                    }
                ),
              )
            ]
            
          ),
        ),
      )

      )
    );
  }
}
