import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/theme.dart';
import 'package:airplane/widgets/custom_buttom.dart';
import 'package:airplane/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController(text: "");
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  final TextEditingController hobbyController = TextEditingController(text: "");

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
        title: 'Full Name',
        hintText: 'Your full name',
        controller: nameController,
      );
    }

    Widget emailInput() {
      return CustomTextFormField(
        title: 'Email Address',
        hintText: 'Your email',
        controller: emailController,
      );
    }

    Widget passwordInput() {
      return CustomTextFormField(
        title: 'Password',
        hintText: 'Your password',
        obscureText: true,
        controller: passwordController,
      );
    }

    Widget hobyInput() {
      return CustomTextFormField(
        title: 'Hobby',
        hintText: 'Your favorite hobby',
        controller: hobbyController,
      );
    }

    Widget submitButton() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/bonus', (route) => false);
          } else if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: kRedColor, content: Text(state.error)));
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return CustomButtom(
              title: 'Get Started',
              font_size: 18,
              onPressed: () {
                context.read<AuthCubit>().signUp(
                    email: emailController.text,
                    password: passwordController.text,
                    name: nameController.text,
                    hobby: hobbyController.text);
              });
        },
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
