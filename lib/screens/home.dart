import 'package:flutter/material.dart';
import '../util/places.dart';
import '../widgets/horizontal_place_item.dart';
import '../widgets/icon_badge.dart';
import '../widgets/search_bar.dart';
import '../widgets/vertical_place_item.dart';
import '../util/const.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            Constants.appName,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontFamily: "Iranintl",
            ),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColorLight,
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
              color: Theme.of(context).primaryColor,
              size: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.centerRight,
              child: const Text(
                "إلي أين الرحلة القادمة؟",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Iranintl"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SearchBar(),
          ),
          buildHorizontalList(context),
          buildVerticalList(),
        ],
      ),
    );
  }

  buildHorizontalList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0),
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places.reversed.toList()[index];
          return HorizontalPlaceItem(place: place);
        },
      ),
    );
  }

  buildVerticalList() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places[index];
          return VerticalPlaceItem(
            place: place,
          );
        },
      ),
    );
  }
}
