import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subtitle(), startButton()],
        ),
      ),
    );
  }

  Widget bonusCard() {
    return Container(
      width: 300,
      height: 211,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/img_card.png')),
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                blurRadius: 50,
                offset: Offset(0, 10))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: whiteTextStyle.copyWith(
                        fontWeight: light, fontSize: 14),
                  ),
                  Text(
                    'Kezia Anne',
                    style: whiteTextStyle.copyWith(
                        fontWeight: semibold, fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo_icon.png"))),
                  ),
                  Text(
                    'Pay',
                    style: whiteTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  )
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Balance',
                style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: light),
              ),
              Text(
                'IDR 280.000.000',
                style:
                    whiteTextStyle.copyWith(fontSize: 26, fontWeight: medium),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Text(
        "Big Bonus 🎉",
        style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 32),
      ),
    );
  }

  Widget subtitle() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        "We give you early credit so that \nyou can buy a flight ticket",
        style: greyTextStyle.copyWith(
          fontWeight: light,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget startButton() {
    return Container(
      width: 220,
      height: 55,
      margin: EdgeInsets.only(top: 50),
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          child: Text(
            'Start Fly Now',
            style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
          )),
    );
  }
}
