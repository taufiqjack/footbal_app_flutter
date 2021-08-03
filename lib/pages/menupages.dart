import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:footbal_app/custom/warna.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int? defaultChoiceIndex;
  List<String> choiceList = ['All', 'Live', 'Incoming', 'Finished'];

  @override
  void initState() {
    super.initState();
    defaultChoiceIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Warna.whiteBg,
        appBar: AppBar(
          backgroundColor: Warna.whiteBg,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/images/menu.svg',
                height: 5,
                width: 5,
                fit: BoxFit.scaleDown,
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
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top today’s\nmatches for you',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Wrap(
                spacing: 15,
                children: List.generate(choiceList.length, (index) {
                  return ChoiceChip(
                      labelPadding: EdgeInsets.all(2.0),
                      label: Text(
                        choiceList[index],
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.white, fontSize: 14),
                      ),
                      selected: defaultChoiceIndex == index,
                      selectedColor: Warna.purple,
                      onSelected: (value) {
                        setState(() {
                          defaultChoiceIndex =
                              value ? index : defaultChoiceIndex;
                        });
                      },
                      elevation: 1,
                      padding: EdgeInsets.symmetric(
                        horizontal: 17,
                      ));
                }),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Card(
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
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                                Image.asset(
                                  'assets/images/premierleague.png',
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5)),
                                Text(
                                  'English Premier League',
                                  style: GoogleFonts.montserrat(),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                                Icon(
                                  Icons.notifications_rounded,
                                  color: Colors.purple,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(15)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Image.asset(
                                    'assets/images/leicaster.png',
                                  ),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15)),
                                Column(
                                  children: [
                                    Text('17.06.2021',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12, color: Colors.grey)),
                                    Text(
                                      '2 : 0',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                    Text('Fulltime',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12, color: Colors.grey)),
                                  ],
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25)),
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 55),
                                ),
                                Text(
                                  'Sheffield',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Card(
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
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                                Image.asset(
                                  'assets/images/premierleague.png',
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5)),
                                Text(
                                  'English Premier League',
                                  style: GoogleFonts.montserrat(),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                                Icon(
                                  Icons.notifications_none_rounded,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(15)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Image.asset(
                                    'assets/images/everton.png',
                                  ),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15)),
                                Column(
                                  children: [
                                    Text('17.06.2021',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12, color: Colors.grey)),
                                    Text(
                                      '1 : 1',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                    Text('Fulltime',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12, color: Colors.grey)),
                                  ],
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25)),
                                Image.asset(
                                  'assets/images/astonvilla.png',
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    'Everton',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 55),
                                ),
                                Text(
                                  'Aston Villa',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
