import 'package:flutter/material.dart';
import 'package:flutter_application_new/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formkey.currentState?.validate() ?? false) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, myroutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("assets/image/Login_image.png", width: 100, height: 100,),
              SizedBox(
                height: 220.0,
              ),
              Text(
                "welcome $name",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "enter username",
                          labelText: "username",
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return "username is empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),

                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "enter password",
                            labelText: "password",
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return "password is empty";
                            } else if ((value?.length ?? 0) < 6) {
                              return "password should be minimum of 6";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 30.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 10),
                        // child: InkWell(
                        //   onTap: () => movetohome(context),
                        // ),
                        child: InkWell(
                          onTap: () => movetohome(context),
                          child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changebutton ? 50 : 150,

                          // color: Colors.blue,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  // ),
                                  // earlier given decoration to child but decoration should be given to ancesstor
                                  // decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  // borderRadius: BorderRadius.circular(changebutton ? 50 : 10),
                                ),
                        ),
                        ),
                      ),

                      // ElevatedButton
                      // (
                      //   onPressed: ()
                      //   {
                      //   Navigator.pushNamed(context, myroutes.homeroute);
                      // },
                      //  child: Text("LOGIN"),
                      //   style: TextButton.styleFrom(minimumSize: Size(100, 30))

                      //   )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
