import 'package:flutter/material.dart';
import 'package:footbal_app/custom/warna.dart';
import 'package:footbal_app/pages/menupages.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsMatch extends StatefulWidget {
  DetailsMatch({Key? key}) : super(key: key);

  @override
  _DetailsMatchState createState() => _DetailsMatchState();
}

class _DetailsMatchState extends State<DetailsMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna.whiteBg,
      appBar: AppBar(
        backgroundColor: Warna.whiteBg,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenuPage()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          Padding(padding: EdgeInsets.all(10)),
          GestureDetector(
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Card(
          child: Container(
            height: 213,
            width: 366,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Warna.orange,
                            borderRadius: BorderRadius.circular(5)),
                        height: 20,
                        width: 50,
                        child: Center(
                          child: Text(
                            'LIVE',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Image.asset(
                      'assets/images/premierleague.png',
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    Text(
                      'English Premier League',
                      style: GoogleFonts.montserrat(),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Icon(
                      Icons.notifications_rounded,
                      color: Colors.purple,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(5)),
                Divider(
                  height: 0.5,
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Image.asset(
                        'assets/images/leicaster.png',
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                    Column(
                      children: [
                        Text('17.06.2021',
                            style: GoogleFonts.montserrat(
                                fontSize: 12, color: Colors.grey)),
                        Text(
                          '2 : 0',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text('Fulltime',
                            style: GoogleFonts.montserrat(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                    Image.asset(
                      'assets/images/sheffield.png',
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Leicester',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55),
                    ),
                    Text(
                      'Sheffield',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
