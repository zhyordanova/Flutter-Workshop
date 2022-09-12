// ignore_for_file: avoid_print, always_specify_types

import 'package:flutter/material.dart';

import 'package:travel_app/models/hotel_model.dart';
import 'package:travel_app/widgets/app_bolded_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class HotelCarousel extends StatelessWidget {
  const HotelCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AppBoldedText(
                text: 'Exclusive Hotels',
                size: 22,
                letterSpacing: 1.5,
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: AppBoldedText(
                  text: 'See All',
                  size: 16,
                  color: Theme.of(context).primaryColor,
                  weight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 320,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              Hotel hotel = hotels[index];
              return Container(
                margin: const EdgeInsets.all(10),
                width: 240,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 15,
                      child: Container(
                        height: 120,
                        width: 240,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              AppBoldedText(
                                text: hotel.name,
                                size: 22,
                                weight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                              const SizedBox(height: 2),
                              AppText(
                                text: hotel.address,
                                color: Colors.grey,
                              ),
                              const SizedBox(height: 2),
                              AppBoldedText(
                                text: '\$${hotel.price} / per night',
                                size: 18,
                                weight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          height: 180,
                          width: 350,
                          image: AssetImage(hotel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
