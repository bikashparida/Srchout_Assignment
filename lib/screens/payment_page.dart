import 'package:bikeapp/widgets/date_container.dart';
import 'package:bikeapp/widgets/page_name_container.dart';
import 'package:bikeapp/widgets/payment_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 20, top: 60),
        child: Column(
          children: [
            const PageNameContainer(title: 'Check Out'),
            const SizedBox(height: 30),
            Container(
              height: 183,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffBABABA),
              ),
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DateContainer(dateName: 'Start Date', date: '09-06-2021'),
                    DateContainer(dateName: 'End Date', date: '12-06-2021'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35),
            SizedBox(
              height: 38,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Color(0xffBABABA)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffBABABA)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Apply coupon',
                  hintStyle: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Color(0xff8C7E7E),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: Color(0xff000000),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffBABABA),
                    height: 5,
                  ),
                  const PaymentItemsWidget(item: 'Days', value: '4'),
                  const PaymentItemsWidget(item: 'Rent', value: '₹ 5996'),
                  const PaymentItemsWidget(
                      item: 'Additional items', value: '₹ 6400'),
                  const PaymentItemsWidget(
                      item: 'Coupon Discount', value: '₹ 396'),
                  const Divider(
                    color: Color(0xffBABABA),
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Amount',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Color(0xff000000),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        '₹ 12000',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Color(0xff000000),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Container(
              height: 63,
              decoration: BoxDecoration(
                color: const Color(0xff000000),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'PAY',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
