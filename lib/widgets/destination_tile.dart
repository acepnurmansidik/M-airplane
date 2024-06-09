import 'package:airplane/page/detail_page.dart';
import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final double rating;
  final String imageUrl;
  const DestinationTile(
      {super.key,
      required this.name,
      required this.city,
      required this.rating,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  margin: EdgeInsets.only(right: 2),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/icon_star.png'))),
                ),
                Text(
                  '$rating',
                  style: blackTextStyle.copyWith(fontWeight: medium),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
