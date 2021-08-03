import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    defaultChoiceIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Top today’s\nmatches for you',
                ),
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
                      selectedColor: Colors.deepPurple,
                      onSelected: (value) {
                        setState(() {
                          defaultChoiceIndex =
                              value ? index : defaultChoiceIndex;
                        });
                      },
                      elevation: 1,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ));
                }),
              ),
            ],
          ),
        ));
  }
}
