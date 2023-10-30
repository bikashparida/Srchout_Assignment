import 'package:bikeapp/widgets/add_item.dart';
import 'package:bikeapp/widgets/bike_features_container.dart';
import 'package:bikeapp/widgets/bike_name_widget.dart';
import 'package:bikeapp/widgets/page_name_container.dart';
import 'package:bikeapp/widgets/rent_container.dart';
import 'package:flutter/material.dart';
import '../widgets/text_widget.dart';

class BikeDetailsPage extends StatefulWidget {
  const BikeDetailsPage({super.key});

  @override
  State<BikeDetailsPage> createState() => _BikeDetailsPageState();
}

class _BikeDetailsPageState extends State<BikeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 60),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: PageNameContainer(title: 'Bike Details'),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 365,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 10),
                        BikeNameWidget(name1: 'Indian', name2: 'Scout Bobber'),
                        BikeFeaturesContainer(
                            name: 'Category', data: 'Cruiser'),
                        BikeFeaturesContainer(
                            name: 'Displacement', data: '1133 cc'),
                        BikeFeaturesContainer(
                            name: 'Max. Speed', data: '124 km/h'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              height: 282,
                              width: 203,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffBABABA),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              child: Container(
                                height: 237,
                                width: 219,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/img_11.png'),
                                      fit: BoxFit.cover),
                                  color: Colors.transparent
                                ),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: RentContainer(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    TextWidget(
                        text: 'Add', size: 21, fontWeight: FontWeight.w700),
                    TextWidget(
                      text: ' Items',
                      size: 21,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffBABABA),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: AddItem(height: height, width: width),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
