import 'package:earth_scan/Screens/History/history_screen.dart';
import 'package:earth_scan/Screens/Home/home_screen.dart';
import 'package:earth_scan/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(height: 75,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return HistoryScreen();
                      },
                    ),
                  );
                },
                child: Icon(Icons.watch_later_outlined, color: PrimaryColour),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  primary: SecondaryColour,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return HomeScreen();
                      },
                    ),
                  );
                },
                child: Icon(Icons.home_outlined, color: PrimaryColour),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(25),
                  primary: SecondaryColour,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.card_giftcard, color: PrimaryColour),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  primary: SecondaryColour,
                ),
              )
            ],
          ),
          SizedBox(height: 50),
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
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                        alignment: Alignment.center,
                        child: Text(
                          "Points: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),
                        )
                    ),
                    Container(
                      height: 383,
                      width: 375,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            height: 120,
                            width: 200,
                          ),
                          SizedBox(height: 12,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            height: 145,
                            width: 200,
                          ),
                          SizedBox(height: 12,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            height: 145,
                            width: 200,
                          ),
                          SizedBox(height: 12,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            height: 145,
                            width: 200,
                          ),
                          SizedBox(height: 12,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            height: 145,
                            width: 200,
                          ),
                          SizedBox(height: 12,),
                        ],
                      ),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
