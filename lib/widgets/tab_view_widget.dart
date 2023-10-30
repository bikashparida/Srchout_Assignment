import 'package:bikeapp/screens/bike_details_page.dart';
import 'package:bikeapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TabViewWidgets extends StatefulWidget {
  const TabViewWidgets({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  State<TabViewWidgets> createState() => _TabViewWidgetsState();
}

class _TabViewWidgetsState extends State<TabViewWidgets> {
  List<Map<String, dynamic>> bikeData = [
    {
      "name1": "Meteore",
      "name2": "Royal Enfield",
      "price": "699",
      "image": "images/img_2.png"
    },
    {
      "name1": "Scout Bobber",
      "name2": "Indian",
      "price": "1499",
      "image": "images/img_3.png"
    },
    {
      "name1": "Rebel 1100",
      "name2": "Honda",
      "price": "1199",
      "image": "images/img_4.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 15),
      height: widget.height * 0.27,
      child: ListView.builder(
        itemCount: bikeData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BikeDetailsPage())),
          child: Container(
            width: widget.width * 0.4,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: const Color(0xffBABABA)),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: widget.height * 0.16,
                  width: widget.width * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(bikeData[index]["image"]),
                        fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: bikeData[index]["name1"],
                        size: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      TextWidget(
                        text: bikeData[index]["name2"],
                        size: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(
                        height: widget.height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Row(
                          children: [
                            TextWidget(
                              text: bikeData[index]["price"],
                              size: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            const TextWidget(
                              text: '/ per day',
                              size: 17,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
