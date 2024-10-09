

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  TextEditingController controller  = TextEditingController();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
       isButtonEnabled = controller.text.length >= 8;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            onSaved: (newValue) {
              
            },
            onChanged: (value) {
              
            },
            controller: controller,
          ),
          ElevatedButton(
            onPressed: isButtonEnabled ? (){

            } : null,
             child: Text('Button'))
        ],
      ),
    );
  }
}