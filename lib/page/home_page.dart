import 'package:airplane/theme.dart';
import 'package:airplane/widgets/destination_card.dart';
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

    return ListView(
      children: [header(), popularDestination()],
    );
  }
}
