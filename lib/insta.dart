import 'package:amazon/find.dart';
import 'package:amazon/identi.dart';
import 'package:amazon/instahome.dart';
import 'package:flutter/material.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,

        child: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [SliverAppBar(
            pinned: true,
            expandedHeight: 560,
            backgroundColor: Colors.black,
            // automaticallyImplyLeading: true,
            leading: Icon(Icons.lock,color: Colors.white,),
            title: Row(
              children: [
                Text("demon_smiler25",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
                ),),
                Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),
              ],
            ),
            actions: [
              Icon(Icons.add_box_outlined,color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu,color: Colors.white,),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(height: 80,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>inshom()));
                            },
                            child: Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("assets/dp.jpg"),
                                    fit: BoxFit.cover
                                  ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("88",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                          Text("Posts",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          children: [
                            Text("1,429",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                            Text("Followers",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          children: [
                            Text("394",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                            Text("Following",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                          ],
                        ),
                      )
                    ],
                  ),
                      Align(
                        alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text("🤟 H A R I K R I S H 💥",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),

                          ),),
                  Padding(
                    padding: const EdgeInsets.only(right: 230.0),
                    child: Container(
                      height: 22,
                      width: 122,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        ),
                      child: (Text("@demon_smiler25",style: TextStyle(color: Colors.white ),)),
                      ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Text("💢I can I'll 💥",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),
                            Text("💙Developer 💻",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                            Text("Mr.Tirupur*2🎖️",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),
                            Text("️Workout🏋️‍♂️ and meditation 🧘‍♂️",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                            Text("#belivesingod🙏",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),
                            Text("#makingahealthylifestyle",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)
                          ],
                        ),

                      ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)
                          )
                        ),
                        child: Center(child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)),
                      ),
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8)
                          )
                        ),
                        child: Center(child: Text("Share profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)),
                      )
                    ],
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: lights.length,
                        itemBuilder:(BuildContext  context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(lights[index].image,),
                                    fit: BoxFit.cover
                                  ),
                                ),

                              ),
                              Text(lights[index].text, style: TextStyle(color: Colors.white ),),
                            ],
                          ),

                        );

                        }
                    ),
                  ),
                ],

              ),

            ),
            bottom: TabBar(
                tabs: [
              Icon(Icons.menu,color: Colors.blue,size: 24,),
              Icon(Icons.ondemand_video_outlined,color: Colors.blue,size: 24,),
              Icon(Icons.perm_contact_cal,color: Colors.blue,size: 24,),
            ]),

          )];
        }, body: TabBarView(
          children: [
            GridView.builder(

              // shrinkWrap: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 3,
                ),
                itemCount:mie.length ,
                itemBuilder: (BuildContext context, int index){
                  return
                    Container(
                    height: 108,
                    width: 150,
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(mie[index].image)
                      ),
                    ),


                  );
                }),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,

                ),itemCount: reel.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(reel[index].image)
                      )
                    ),
                  );
                }
            ),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 3
                ), itemCount: lass.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(lass[index].image),
                      )
                    ),
                  );
                }
            )




          ],
        ),),
      ),


    );
  }
}

















