// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_new/Models/Catalog.dart';
import 'package:flutter_application_new/widgets/drawer.dart';
import 'package:flutter_application_new/widgets/item_widget.dart';

 class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  
  @override
  void initState() {
    super.initState();
    LocateData();
  }

    LocateData()async{

      await Future.delayed(Duration(seconds: 2));
    var catalogjson = await rootBundle.loadString("assets/files/catalag.json");
        // converted form sting to map

    var decodedData = jsonDecode(catalogjson) ;
    var productsData = decodedData["Products"]; 
    catalogmodels.items= List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    // catalogmodels.items = productsData?.map<Item>((item) => Item.fromMap(item))?.toList() ?? [];


    setState(() {
      
    });
    }




  @override
  Widget build(BuildContext context) {
    double days = 30;

    String temp = "mayank ";
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue app", textScaleFactor: 1.5,),
      ),
        body:  Padding(
            padding: const EdgeInsets.all(19.0),
            child: (catalogmodels.items !=null && catalogmodels.items.isNotEmpty)? 
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 , mainAxisSpacing: 15, crossAxisSpacing: 12), 
              itemBuilder: (context, index) {
                final item = catalogmodels.items[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
                  child: GridTile(
                    header: Container(
                      child: Text(item.name, style: TextStyle(color: Colors.white),),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple
                      ),
                      // color: Colors.deepPurple,
                      
                      ),
                    footer: Container(
                      child: Text(item.price.toString(), style: TextStyle(color: Colors.white),),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange
                      ),
                      // color: Colors.deepPurple,
                      
                      ),,
                    child: Image.network(item.image)));
              },
              itemCount: catalogmodels.items.length,
            // ListView.builder(
            //   itemCount: catalogmodels.items.length,
            //   itemBuilder: (context, index) {
            //     return ItemWidget(item: catalogmodels.items[index],);
            //   },
            ):Center(child: CircularProgressIndicator(),)
          ),
         
          drawer: const MyDrawer(),
  
 
        );

    
  }
}