import 'package:flutter/material.dart';
import '../widgets/recently_views.dart';
import '../widgets/tab_view_widget.dart';
import '../widgets/tab_widget.dart';
import '../widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 35, bottom: 30, left: 10),
              height: height * 0.06,
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    foregroundImage: AssetImage(
                      'images/img_1.png',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: 'Welcome',
                        size: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8C7E7E),
                      ),
                      TextWidget(
                        text: 'Abhi Tiwari',
                        size: 15,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: height * 0.07,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xffEFEEEE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Color(0xffD2CFCF),
                  ),
                  hintText: 'Search Bike',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xffD2CFCF),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              height: height * 0.06,
              width: double.maxFinite,
              child: TabWidget(
                height: 225,
                width: width,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  TextWidget(
                      text: 'Popular', size: 21, fontWeight: FontWeight.w700),
                  TextWidget(
                    text: ' items',
                    size: 21,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff8C7E7E),
                  )
                ],
              ),
            ),
            TabViewWidgets(
              height: height,
              width: width,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30,left: 15),
              child: Row(
                children: [
                  TextWidget(
                      text: 'Recently',
                      size:21,
                      fontWeight: FontWeight.w700),
                  TextWidget(
                    text: ' viewed',
                    size: 21,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffBABABA),
                  )
                ],
              ),
            ),
            RecentlyViewedBikes(
              height: height,
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}
