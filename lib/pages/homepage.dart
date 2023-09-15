 import 'package:flutter/material.dart';
import 'package:flutter_application_new/Models/Catalog.dart';
import 'package:flutter_application_new/widgets/drawer.dart';
import 'package:flutter_application_new/widgets/item_widget.dart';


 class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double days = 30;

    String temp = "mayank ";
    return  Scaffold(
      appBar: AppBar(
        title: const Text("catalogue app"),
      ),
        body:  Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView.builder(
              itemCount: catalogmodels.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: catalogmodels.items[index],);
              },
            ),
          ),
         
          // drawer: const MyDrawer(),
  
 
        );

    
  }
}