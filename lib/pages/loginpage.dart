import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          // Image.asset("assets/image/login_image.png"),
          SizedBox(
            height: 320.0,
          ),
          Text("welcome",style: TextStyle( 
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 20.0,
          ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
              decoration: InputDecoration(
                hintText: "enter username",
                labelText: "username",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "enter password",
                labelText: "password",
              ),
            ),
            SizedBox(
            height: 20.0,
          ),

          ElevatedButton
          (
            onPressed: () 
            {
            print("Hi mayank");
          },
           child: Text("LOGIN"),
            style: TextButton.styleFrom()
            )
          
            ],
          ),
        )
        ],
      )
    );
  }
} 