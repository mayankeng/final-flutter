 import 'package:flutter/material.dart';


 class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double days = 30;

    String temp = "mayank ";
    return  Scaffold(
      appBar: AppBar(
        title: Text("catalogue app"),
      ),
        body: Center(
          child: Container(
            child: Text("welcome to $days days $temp")
            )
            ),
          drawer: Drawer(),
 
        );

    
  }
}