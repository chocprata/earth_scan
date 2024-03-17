import 'package:earth_scan/Screens/History/history_screen.dart';
import 'package:earth_scan/Screens/Rewards/rewards_screen.dart';
import 'package:earth_scan/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
            Align(
              child: IconButton(
                  onPressed: () => FirebaseAuth.instance.signOut(),
                  icon: Icon(Icons.logout),
                alignment: Alignment.bottomRight,
              ),
            ),
            SizedBox(height: 30,),
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
                  onPressed: () {},
                  child: Icon(Icons.home_outlined, color: PrimaryColour),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(25),
                    primary: SecondaryColour,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return RewardsScreen();
                        },
                      ),
                    );
                  },
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
                          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Points: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Recommended Purchases: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                      SizedBox(height: 13,),
                      Container(
                        height: 171,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(width: 12,),
                            Container(
                              child: Image.asset("Assets/Images/bread.png"),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              width: 145,
                            ),
                            SizedBox(width: 12,),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              width: 145,
                            ),
                            SizedBox(width: 12,),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              width: 145,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: InfoBoxColour,
                        ),
                        width: 350,
                        height: 145,
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
