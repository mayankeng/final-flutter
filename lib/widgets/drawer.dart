import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageurl = "https://images.news18.com/ibnlive/uploads/2022/05/pjimage-2022-05-03t235331.727.jpg";
    return Container(
      color: Colors.deepPurple,
      height: ui.window.physicalSize.height / ui.window.devicePixelRatio,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Mayank aggarwal"),
                  accountEmail: Text("mayank@gmail.com"),
                  // currentAccountPicture: CircleAvatar(
                  //   backgroundImage: NetworkImage("https://images.news18.com/ibnlive/uploads/2022/05/pjimage-2022-05-03t235331.727.jpg"),
                  // ),
                  //  currentAccountPicture: Image.network(imageurl),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text(
                "email me",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
