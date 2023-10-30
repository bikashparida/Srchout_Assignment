import 'package:bikeapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem(
      {super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  List<Map<String, dynamic>> bikeData1 = [
    {"name": "Riding Jacket", "price": "800", "image": "images/img_8.png"},
    {"name": "Riding Gloves", "price": "800", "image": "images/img_9.png"},
    {"name": "Helmet", "price": "800", "image": "images/img_10.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height * 0.4,
      child: ListView.builder(
        controller: ScrollController(),
        itemCount: bikeData1.length,
        itemBuilder: (context, index) => Container(
          height: widget.height * 0.07,
          margin: const EdgeInsets.symmetric(vertical: 7),
          width: double.maxFinite,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: const Color(0xffBABABA)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: widget.height * 0.04,
                      width: widget.width * 0.12,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xffBABABA)),
                          image: DecorationImage(
                              image: AssetImage(bikeData1[index]["image"]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: bikeData1[index]["name"],
                          size: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: bikeData1[index]["price"],
                              size: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            const TextWidget(
                              text: '/ per day',
                              size: 17,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 22,
                  width: 70,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: index != 1 ? Colors.black : const Color(0xffBABABA),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextWidget(
                    text: index != 1 ? '1' : 'Add',
                    fontWeight: FontWeight.w400,
                    size: 15,
                    color: index != 1 ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
