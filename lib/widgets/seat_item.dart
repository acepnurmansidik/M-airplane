import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0 => Available, 1 => Selected, 2 => Unavailable
  final bool isAvailable;
  final String id;
  const SeatItem({super.key, this.isAvailable = true, required this.id});

  @override
  Widget build(BuildContext context) {
    // watch digunakan utk melihat perubahan secara live
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return kUnavailabaleColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailabaleColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailabaleColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(fontWeight: semibold),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor(), width: 2),
            color: backgroundColor(),
            borderRadius: BorderRadius.circular(15)),
        child: child(),
      ),
    );
  }
}
