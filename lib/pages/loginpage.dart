import 'package:flutter/material.dart';
import 'package:flutter_application_new/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  @override 
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          // Image.asset("assets/image/login_image.png"),
          SizedBox(
            height: 220.0,
          ),
          Text("welcome $name"
          ,style: TextStyle( 
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 30.0,
          ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 32.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                decoration: InputDecoration(
                  hintText: "enter username",
                  labelText: "username",
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {
                    
                  });
                },
              ),
              
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "enter password",
                  labelText: "password",
                ),
              ),
              SizedBox(
              height: 30.0,
            ),
          
            ElevatedButton
            (
              onPressed: () 
              {
              Navigator.pushNamed(context, myroutes.homeroute);
            },
             child: Text("LOGIN"),
              style: TextButton.styleFrom(minimumSize: Size(100, 30))
              
              )
            
              ],
            ),
          ),
        )
        ],
      )
    );
  }
} 