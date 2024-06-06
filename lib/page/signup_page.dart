import 'package:airplane/theme.dart';
import 'package:airplane/widgets/custom_buttom.dart';
import 'package:airplane/widgets/custom_text_form_field.dart';
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
      return CustomTextFormField(
          title: 'Full Name', hintText: 'Your full name');
    }

    Widget emailInput() {
      return CustomTextFormField(
          title: 'Email Address', hintText: 'Your email');
    }

    Widget passwordInput() {
      return CustomTextFormField(
        title: 'Password',
        hintText: 'Your password',
        obscureText: true,
      );
    }

    Widget hobyInput() {
      return CustomTextFormField(
          title: 'Hobby', hintText: 'Your favorite hobby');
    }

    Widget submitButton() {
      return CustomButtom(
          title: 'Get Started',
          font_size: 18,
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          });
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
