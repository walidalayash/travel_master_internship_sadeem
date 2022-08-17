import 'package:flutter/material.dart';

import '../screens/details.dart';

class VerticalPlaceItem extends StatelessWidget {
  final Map place;

  const VerticalPlaceItem({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        child: SizedBox(
          height: 90.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 15.0),
              SizedBox(
                height: 80.0,
                width: MediaQuery.of(context).size.width - 130.0,
                child: ListView(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${place["name"]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            fontFamily: "Iranintl"),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 3.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        const Icon(
                          Icons.location_on,
                          size: 13.0,
                          // color: Colors.blueGrey[300],
                        ),
                        const SizedBox(width: 3.0),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "${place["location"]}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              //  color: Colors.blueGrey[300],
                              fontFamily: "Iranintl",
                            ),
                            maxLines: 1,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${place["price"]}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          fontFamily: "Iranintl",
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "${place["img"]}",
                  height: 70.0,
                  width: 70.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Details();
              },
            ),
          );
        },
      ),
    );
  }
}
