import 'package:amazon/home.dart';
import 'package:amazon/navigat.dart';
import 'package:flutter/material.dart';

class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  final _key=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height:400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ama 1.jpg")
                    )
                  ),
                ),
                  
                SizedBox(height: 30,),
                  
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail,color: Colors.blue,),
                      hintText: " Enter the Email",
                      // prefix: Icon(Icons.mail,color: Colors.blue,),
                      border: OutlineInputBorder(),
                    ),
                    validator: (mail)
                    {
                      if(mail==null|| mail.isEmpty||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(mail))
                        {
                          return "please enter valid mail";
                        };
                    }
                  ),
                ),
                  
                SizedBox(height: 30,),
                  
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock,color: Colors.blue,),
                      hintText: " Password",
                        // prefix: Icon(Icons.remove_red_eye,color: Colors.blue,),
                      border: OutlineInputBorder()
                    ),
                    validator: (pass)
                      {
                        if(pass==null || pass.isEmpty||pass.length<4 )
                          {
                            return "please enter atleast 4 digits";
                          }
                      }
                  ),
                ),
                  
                SizedBox(height: 30,),
                  
                ElevatedButton(style: ElevatedButton.styleFrom(),onPressed: (){
                 setState(() {
                   if(_key.currentState!.validate()){
                     Navigator.push(context, MaterialPageRoute(builder: (_) => navi()));
                   }
                  
                 });
                }, child: Text("login"))
              ],
                  
            ),
          ),
        ),
      
      ),
    );
  }
}
