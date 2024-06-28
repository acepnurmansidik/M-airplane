import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/theme.dart';
import 'package:airplane/widgets/booking_details_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOTE:DESTINATION TILE
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        image: NetworkImage(transaction.destination.imageUrl),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.name,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
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
                    '${transaction.destination.rating}',
                    style: blackTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              )
            ],
          ),

          // Booking DETAILS
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          ),

          // BOOKING DETAILS ITEM
          BookingDetailsItem(
              title: 'Traveler',
              valueText: '${transaction.amountOfTraveler} Person',
              valueColor: kBlackColor),
          BookingDetailsItem(
              title: 'Seat',
              valueText: transaction.selectedSeats,
              valueColor: kBlackColor),
          BookingDetailsItem(
              title: 'Insurance',
              valueText: transaction.insurance ? 'YES' : 'NO',
              valueColor: transaction.insurance ? kGreenColor : kRedColor),
          BookingDetailsItem(
              title: 'Refundable',
              valueText: transaction.refundable ? 'YES' : 'NO',
              valueColor: transaction.refundable ? kGreenColor : kRedColor),
          BookingDetailsItem(
              title: 'VAT',
              valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%',
              valueColor: kBlackColor),
          BookingDetailsItem(
              title: 'Price',
              valueText: NumberFormat.currency(
                      locale: 'id', symbol: "IDR ", decimalDigits: 0)
                  .format(transaction.price),
              valueColor: kBlackColor),
          BookingDetailsItem(
              title: 'Grand Total',
              valueText: NumberFormat.currency(
                      locale: 'id', symbol: "IDR ", decimalDigits: 0)
                  .format(transaction.grandTotal),
              valueColor: kPrimaryColor),
        ],
      ),
    );
    ;
  }
}
