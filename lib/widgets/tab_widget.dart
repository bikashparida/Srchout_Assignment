import 'package:bikeapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  int selectedIndex = 1;

  List<String> category = ['Adventure', 'Crusier', 'Sports Bike', 'Tourer'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: category.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          print(selectedIndex);
        },
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 100,
          margin: EdgeInsets.only(right: widget.width * 0.02),
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.black : Colors.white,
            border: Border.all(
                width: 2,
                color: selectedIndex == index
                    ? Colors.black
                    : const Color(0xffBABABA)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextWidget(
            text: category[index],
            fontWeight: FontWeight.w400,
            size: 18,
            color: selectedIndex == index ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
