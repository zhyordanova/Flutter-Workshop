import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:travel_app/models/activity_model.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/widgets/app_bolded_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/image_container.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  const DestinationScreen({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }

    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: widget.destination.imageUrl,
                    child: ImageContainer(
                      height: 160,
                      imageUrl: AssetImage(widget.destination.imageUrl),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 40,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.black,
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.search),
                            iconSize: 30,
                            color: Colors.black,
                          ),
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(FontAwesomeIcons.sort),
                            iconSize: 30,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppBoldedText(
                        text: widget.destination.city,
                        color: Colors.white,
                        size: 35,
                        weight: FontWeight.w600,
                      ),
                      Row(
                        children: <Widget>[
                          const Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 15,
                            color: Colors.white70,
                          ),
                          const SizedBox(width: 5),
                          AppText(
                            text: widget.destination.country,
                            size: 20,
                            color: Colors.white70,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  right: 20,
                  bottom: 20,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white70,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 15,
              ),
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext context, int index) {
                Activity activity = widget.destination.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(130, 20, 20, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 120,
                                  child: AppBoldedText(
                                    text: activity.name,
                                    size: 18,
                                    weight: FontWeight.w600,
                                    textOverflow: TextOverflow.ellipsis,
                                    maxLinesAllowed: 2,
                                  ),
                                ),
                                Column(
                                  children: [
                                    AppBoldedText(
                                      text: '\$${activity.price}',
                                      size: 22,
                                      weight: FontWeight.w600,
                                    ),
                                    const AppText(
                                      text: 'per pax',
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            AppText(
                              text: activity.type,
                              color: Colors.grey,
                            ),
                            _buildRatingStars(activity.rating),
                            const SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(
                                    5,
                                  ),
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: AppText(
                                    text: activity.startTimes[0],
                                    size: 14,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.all(
                                    5,
                                  ),
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: AppText(
                                    text: activity.startTimes[1],
                                    size: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 15,
                      bottom: 15,
                      child: ImageContainer(
                        width: 130,
                        imageUrl: AssetImage(
                          activity.imageUrl,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
