import 'package:amazon/stre.dart';
import 'package:flutter/material.dart';

class inshom extends StatefulWidget {
  const inshom({super.key});

  @override
  State<inshom> createState() => _inshomState();
}

class _inshomState extends State<inshom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [SliverAppBar(
          expandedHeight: 80,
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text("Instagram",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("❤️",style: TextStyle(fontSize: 20,)),
        ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.message_outlined,color: Colors.white,)
            ),
          ],

        )];
      }, body: Container(
        height: double.infinity,
        width: 420,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                width: 420,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount:lc.length,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.redAccent,
                                width: 3
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(lc[index].image)
                              )
                            ),
                          ),
                          Text(lc[index].text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    );
                    
          
                    }
                ),
              ),
              Divider(
                height: 5,
                thickness: 2,
                color: Colors.black,
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/hk2.jpg")
                    )
                  ),
                ),
                title: Text("Demon_smiler25",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                subtitle: Text("🎵shakthisree gopaln.love feels(Backgrounnd sid",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.more_vert,color: Colors.white,size: 20,),
              ),
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/hk4.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                      right: 8,
                      child: Icon(Icons.volume_up,color: Colors.black,)),
                  Positioned(
                    bottom: 2,
                      left: 3,
                      child: Icon(Icons.person,color: Colors.black,))
                ],
          
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("❤️",style: TextStyle(color: Colors.redAccent,fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chat_bubble,color: Colors.grey,size: 26,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.share,color: Colors.white,size: 26,),
                  ),
          
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/w5.jpg")
                        )
                      ),
                      ),
                    Container(
                      height: 40,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/w6.jpg")
                          )
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/w7.jpg")
                          )
                      ),
                    ),
                    Text(" Liked by _aku_na_mata and 338 others",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("demon_smiler25 nature lub❤️ #demonsmiler25 ",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                  )),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("#smiler25 #photography",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
                  )),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("view all 24 comments",style: TextStyle(color: Colors.grey,fontSize: 16),),
                  )),
              ListTile(
                title: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("_abshiek_😍❤️😍",style: TextStyle(color: Colors.white,fontSize: 16),),
                        Text("❤️",style: TextStyle(color: Colors.redAccent,fontSize: 16),)
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("g_praveen ❤️🥰",style: TextStyle(color: Colors.white,fontSize: 16),),
                        Text("❤️",style: TextStyle(color: Colors.redAccent,fontSize: 16),)
                      ],
                    )
                  ],
                ),

              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("November 25,2023",style: TextStyle(color: Colors.grey),),
                  ))
              
            ],
          ),
        ),
      )
      ),
    );
  }
}
