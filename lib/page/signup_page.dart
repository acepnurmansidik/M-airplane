import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [title(), inputSection(), tacButton()],
          ),
        ));
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        'Join us and get \nyour next journey',
        style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
      ),
    );
  }

  Widget inputSection() {
    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: blackTextStyle.copyWith(fontWeight: regular, fontSize: 14),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                  hintText: 'Your full name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: kPrimaryColor))),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: blackTextStyle.copyWith(fontWeight: regular, fontSize: 14),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                  hintText: 'Your email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: kPrimaryColor))),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: blackTextStyle.copyWith(fontWeight: regular, fontSize: 14),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: kBlackColor,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Your password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: kPrimaryColor))),
            )
          ],
        ),
      );
    }

    Widget hobyInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hobby',
              style: blackTextStyle.copyWith(fontWeight: regular, fontSize: 14),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                  hintText: 'Your favorite hoby',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: kPrimaryColor))),
            )
          ],
        ),
      );
    }

    Widget submitButton() {
      return Container(
        width: double.infinity,
        height: 55,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
          child: Text(
            'Get Started',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor),
      child: Column(
        children: [
          usernameInput(),
          emailInput(),
          passwordInput(),
          hobyInput(),
          submitButton(),
        ],
      ),
    );
  }

  Widget tacButton() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 50, bottom: 73),
      child: Text(
        'Terms and Conditions',
        style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
      ),
    );
  }
}
