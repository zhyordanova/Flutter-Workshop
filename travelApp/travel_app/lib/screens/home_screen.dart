import 'package:flutter/material.dart';

import 'package:travel_app/widgets/app_bolded_text.dart';
import 'package:travel_app/widgets/bottom_navigation_bar.dart';
import 'package:travel_app/widgets/destination_carousel.dart';
import 'package:travel_app/widgets/hotel_carousel.dart';
import 'package:travel_app/widgets/transport_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppBoldedText(
                text: ' Flutter Travel App',
              ),
            ),
            SizedBox(height: 20),
            TransportNavigationBar(),
            SizedBox(height: 20),
            DestinationCarousel(),
            SizedBox(height: 20),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBottomBar(),
    );
  }
}
