import 'package:earth_scan/Screens/Login/login_screen.dart';
import 'package:earth_scan/Screens/Sign%20Up/signup_screen.dart';
import 'package:earth_scan/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "EarthScan",
                style: GoogleFonts.staatliches(
                    textStyle: TextStyle(color: SecondaryColour),
                  fontSize: 72,
                  shadows: [
                    Shadow(
                      color: Colors.black54,
                      blurRadius: 2.0,
                      offset: Offset(1,1)
                    )
                  ],
                ),
              ),
              Text(
                "Only One Earth",
                style: GoogleFonts.laBelleAurore(
                  textStyle: TextStyle(color: SecondaryColour),
                  fontSize: 24,
                  shadows: [
                    Shadow(
                        color: Colors.black54,
                        blurRadius: 2.0,
                        offset: Offset(1,1)
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.1,),
              Container(
                width: size.width * 0.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      color: SecondaryColour,
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return LoginScreen();
                            },
                        ),
                      );
                      },
                      child: Text(
                          "LOGIN",
                           style: TextStyle(color: PrimaryColour),
                      )
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01,),
              Container(
                width: size.width * 0.8,
                margin: EdgeInsets.symmetric(vertical: 10),
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
                    style: TextStyle(color: SecondaryColour),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    side: BorderSide(color: SecondaryColour),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),)
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
