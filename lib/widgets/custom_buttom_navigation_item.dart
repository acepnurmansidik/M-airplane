import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  const CustomButtomNavigationItem(
      {super.key, required this.index, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            height: 24,
            width: 24,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          Container(
            height: 2,
            width: 30,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kTransparantColor,
          )
        ],
      ),
    );
  }
}
