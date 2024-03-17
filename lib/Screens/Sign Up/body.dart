import 'package:flutter/material.dart';
import 'package:earth_scan/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {

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
                  "CREATE \nACCOUNT",
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
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email"
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 22),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Username:",
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
                          onChanged: (value) {},
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility),
                              border: InputBorder.none,
                              hintText: "Password"
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                              color: PrimaryColour,
                              onPressed: () {},
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: SecondaryColour),
                              )
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
}
