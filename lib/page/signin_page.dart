import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/theme.dart';
import 'package:airplane/widgets/custom_buttom.dart';
import 'package:airplane/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [title(), inputSection(), SignUpButton()],
          ),
        ));
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        'Sign in with your \nexisting account',
        style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
      ),
    );
  }

  Widget inputSection() {
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

    Widget submitButton() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false);
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
              title: 'Sign In',
              font_size: 18,
              onPressed: () {
                context.read<AuthCubit>().signIn(
                    email: emailController.text,
                    password: passwordController.text);
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
          emailInput(),
          passwordInput(),
          submitButton(),
        ],
      ),
    );
  }

  Widget SignUpButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/sign-up');
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Don\'t have account? Sign Up',
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
        ),
      ),
    );
  }
}
