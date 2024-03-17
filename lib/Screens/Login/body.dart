import 'package:earth_scan/Screens/Home/home_screen.dart';
import 'package:earth_scan/Screens/Sign%20Up/signup_screen.dart';
import 'package:earth_scan/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: Text(
                  "WELCOME \nBACK",
                  style: GoogleFonts.staatliches(
                    textStyle: TextStyle(color: SecondaryColour),
                    fontSize: 48,
                    shadows: [
                      Shadow(
                          color: Colors.black54,
                          blurRadius: 2.0,
                          offset: Offset(1,1)
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: SecondaryColour,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33))
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 22),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      alignment: Alignment.centerLeft,
                        child: Text(
                            "Email:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: TextBoxColour,
                      ),
                      child: TextField(
                        controller: emailController,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            border: InputBorder.none,
                          hintText: "Username"
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 22),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: TextBoxColour,
                      ),
                      child: TextField(
                        controller: passwordController,
                        onChanged: (value) {},
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility),
                          border: InputBorder.none,
                          hintText: "Password"
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 22),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                            color: Colors.blue),
                          ),
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: size.width * 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: FlatButton(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                            color: PrimaryColour,
                            onPressed: signIn,
                            child: Text(
                              "LOGIN",
                              style: TextStyle(color: SecondaryColour),
                            )
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      width: size.width * 0.8,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: PrimaryColour,
                              height: 1.5,
                            ),
                          ),
                          Text(" OR ",
                            style: TextStyle(
                                color: PrimaryColour),
                          ),
                          Expanded(
                            child: Divider(
                              color: PrimaryColour,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      margin: EdgeInsets.symmetric(vertical: 2),
                      child: OutlinedButton(
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context){
                              return SignUpScreen();
                            },
                          ),
                        );
                        },
                        child: Text("SIGN UP",
                          style: TextStyle(color: PrimaryColour),
                        ),
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                            side: BorderSide(color: PrimaryColour),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),)
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim()
    );
  }
}
