import 'package:flutter/material.dart';

class cal extends StatefulWidget {
  const cal({super.key});

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  final _abc=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            TextFormField(
              controller: _abc,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter the Email",
              ),
            ),
            ElevatedButton(onPressed: (){
              _abc.text+="21"
              ;
            }, child: Text("1"))
          ],
        ),
      ),
    );
  }
}
