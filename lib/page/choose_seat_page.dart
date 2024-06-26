import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/models/destination_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/page/checkout_page.dart';
import 'package:airplane/theme.dart';
import 'package:airplane/widgets/custom_buttom.dart';
import 'package:airplane/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;
  const ChooseSeatPage(this.destination, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Text(
          'Select Your \nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            // NOTE: AVAILABLE
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/icon_available.png'))),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),

            // NOTE: SELECTED
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/icon_select.png'))),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),

            // NOTE: UNAVAILABLE
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return BlocConsumer<SeatCubit, List<String>>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18), color: kWhiteColor),
            child: Column(
              children: [
                // NOTE:SEAT INDICATOR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            'A',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            'B',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            '',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            'C',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Container(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            'D',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                  ],
                ),

                // NOTE: SEAT 1
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        isAvailable: false,
                        id: "A1",
                      ),
                      const SeatItem(
                        isAvailable: false,
                        id: "B1",
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '1',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C1",
                      ),
                      const SeatItem(
                        id: "D1",
                      ),
                    ],
                  ),
                ),

                // NOTE: SEAT 2
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: "A2",
                      ),
                      const SeatItem(
                        id: "B2",
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '2',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C2",
                      ),
                      const SeatItem(
                        id: "D2",
                      ),
                    ],
                  ),
                ),

                // NOTE: SEAT 3
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: "A3",
                      ),
                      const SeatItem(
                        id: "B3",
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '3',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C3",
                      ),
                      const SeatItem(
                        id: "D3",
                      ),
                    ],
                  ),
                ),

                // NOTE: SEAT 4
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: "A4",
                      ),
                      const SeatItem(
                        id: "B4",
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '4',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C4",
                      ),
                      const SeatItem(
                        id: "D4",
                      ),
                    ],
                  ),
                ),

                // NOTE: SEAT 5
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: "A5",
                      ),
                      const SeatItem(
                        id: "B5",
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '5',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C5",
                      ),
                      const SeatItem(
                        id: "D5",
                      ),
                    ],
                  ),
                ),

                // NOTE: YOUR SEAT
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your seat',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        state.join(", "),
                        style: blackTextStyle.copyWith(
                            fontWeight: medium, fontSize: 16),
                      ),
                    ],
                  ),
                ),

                // NOTE: TOTAL PRICE
                Container(
                  margin: const EdgeInsets.only(top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id', symbol: "IDR ", decimalDigits: 0)
                            .format(state.length * destination.price),
                        style: purpleTextStyle.copyWith(
                            fontWeight: semibold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget checkoutbButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButtom(
            title: 'Continue to Checkout',
            onPressed: () {
              int price = state.length * destination.price;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CheckoutPage(TransactionModel(
                          destination: destination,
                          amountOfTraveler: state.length,
                          selectedSeats: state.join(", "),
                          insurance: true,
                          refundable: false,
                          vat: 0.45,
                          price: price,
                          grandTotal: price + (price * 0.45).toInt()))));
            },
            margin: const EdgeInsets.only(top: 30, bottom: 40),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [title(), seatStatus(), selectSeat(), checkoutbButton()],
      ),
    );
  }
}
