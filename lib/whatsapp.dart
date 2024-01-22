import 'package:amazon/stre.dart';
import 'package:flutter/material.dart';

class wats extends StatefulWidget {
  const wats({super.key});

  @override
  State<wats> createState() => _watsState();
}

class _watsState extends State<wats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [SliverAppBar(
            pinned: true,
            expandedHeight: 120,
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff1c2c34),
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text("Whatsapp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert,color: Colors.white,),
              )
            ],
            bottom: TabBar(tabs: [
              Text("Chats",style: TextStyle(color: Colors.white),),
              Text("Updates",style: TextStyle(color: Colors.white),),
              Text("Calls",style: TextStyle(color: Colors.white),)
            ],),

          )];
        }, 
          body: TabBarView(
          children: [
          Container(
            height: 1000,
            width: 420,
            color: Colors.black,
            child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount:mess.length,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(mess[index].image),
                    fit: BoxFit.cover
                  )
                ),
              ),
              title: Text(mess[index].text,style: TextStyle(color: Colors.grey,fontSize: 18),),
              subtitle: Text(mess[index].text2,style: TextStyle(fontSize: 16,color: Colors.white),),
              trailing: Text(mess[index].text1,style: TextStyle(fontSize: 16),),


            ),
                    );

                    }
                ),

          ),
            Container(
              height: 800,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: mess.length,
                  itemBuilder: (BuildContext  context,index){

                  return Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text("Hii"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(mess[index].image),
                              fit: BoxFit.contain
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            Text(mess[index].text3,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Status",style: TextStyle(color: Colors.grey,fontSize: 16,fontStyle: FontStyle.italic,fontWeight: FontWeight.w800),),
                            ),
                          ],
                        ),
                      ),
                  ],
                  );
                }
              ),
            ),

            Container(
              height: 700,
              width: 400,
              color: Color(0xff1c2c34),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius:BorderRadius.circular(15) ,
                        // color: Colors.green,
                        image: DecorationImage(
                          image: AssetImage("assets/lin.jpg")
                        )
                      ),
                    ),
                    title: Text("Create call link",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                    subtitle: Text("Share a link for your Whatsapp call",style: TextStyle(color: Colors.grey),),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Recent",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                      )),
                  Container(
                    height: 500,
                    // width: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: col.length,
                        itemBuilder: (BuildContext  context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(col[index].image),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            title: Text(col[index].text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                            subtitle: Text(col[index].textone,style: TextStyle(color: Colors.grey,fontSize: 14,),),
                            trailing: Text(col[index].texttwo,style: TextStyle(color: Colors.white,fontSize: 18),),

                          ),
                        );
                        }
                    ),
                  )
                ],

              ),


            ) ],

                ),
    ))
    );


  }
}
//

// class examp extends StatefulWidget {
//   const examp({super.key});
//
//   @override
//   State<examp> createState() => _exampState();
// }
//
// class _exampState extends State<examp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: 500,
//         width: 400,
//         color: Colors.grey,
//         child: Stack(
//             children: [
//               ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 1,
//                   itemBuilder: (BuildContext  context,index){
//                   return Container(
//                     height: 50,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage("lin.jpg"),
//                       )
//                     ),
//                   );
//                   }
//               ),
//               Positioned(
//                 bottom: 10,
//                   right: 20,
//                   child: Icon(Icons.chat)),
//             ],
//           ),
//         ),
//
//     );
//   }
// }

