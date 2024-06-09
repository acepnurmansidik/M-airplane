import 'package:airplane/theme.dart';
import 'package:airplane/widgets/destination_card.dart';
import 'package:airplane/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/img_avatar.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                  name: 'Kali Ciliwung',
                  city: 'Tangerang',
                  rating: 4.8,
                  imageUrl: 'assets/img_dest3.png'),
              DestinationCard(
                  name: 'White Houses',
                  city: 'Spain',
                  rating: 4.7,
                  imageUrl: 'assets/img_dest2.png'),
              DestinationCard(
                  name: 'Hill Heyo',
                  city: 'Monaco',
                  rating: 4.8,
                  imageUrl: 'assets/img_dest1.png'),
              DestinationCard(
                  name: 'Menarra',
                  city: 'Japan',
                  rating: 5.0,
                  imageUrl: 'assets/img_dest4.png'),
              DestinationCard(
                  name: 'Payung Teduh',
                  city: 'Singapore',
                  rating: 4.8,
                  imageUrl: 'assets/img_dest5.png'),
            ],
          ),
        ),
      );
    }

    Widget newDestinaation() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            DestinationTile(
                name: 'Danau Beratan',
                city: 'Singapore',
                rating: 4.6,
                imageUrl: 'assets/img_dest6.png'),
            DestinationTile(
                name: 'Sydney Opera',
                city: 'Australia',
                rating: 4.7,
                imageUrl: 'assets/img_dest7.png'),
            DestinationTile(
                name: 'Roma',
                city: 'Italy',
                rating: 4.5,
                imageUrl: 'assets/img_dest8.png'),
            DestinationTile(
                name: 'Payung Teduh',
                city: 'Singapore',
                rating: 4.9,
                imageUrl: 'assets/img_dest9.png'),
            DestinationTile(
                name: 'Hill Hey',
                city: 'Monaco',
                rating: 4.3,
                imageUrl: 'assets/img_dest10.png'),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestination(), newDestinaation()],
    );
  }
}
