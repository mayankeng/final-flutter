import 'package:flutter/material.dart';
import 'package:flutter_application_new/pages/homepage.dart';
import 'package:flutter_application_new/pages/LoginPage.dart';
import 'package:flutter_application_new/utils/routes.dart';


void main(){
  runApp(Myapp());
}


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: home page(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          

        )
        
      ), 
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.deepPurple
        ), 
        initialRoute: myroutes.homeroute,
        routes: {
          myroutes.homeroute : ((context) => new homepage()),
          myroutes.loginroute:(context) => LoginPage()
        }

    );
  }
}