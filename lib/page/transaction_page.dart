import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/theme.dart';
import 'package:airplane/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<TransactionCubit>().fetchTransactionsUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.isEmpty) {
            return Center(
              child: Text("Oops... you have'nt transaction!"),
            );
          } else {
            return ListView.builder(
                itemCount: state.transactions.length,
                padding: EdgeInsets.only(
                    left: defaultMargin, right: defaultMargin, bottom: 120),
                itemBuilder: (context, index) =>
                    TransactionCard(state.transactions[index]));
          }
        }
        return Center(
          child: Text("Transaction Page"),
        );
      },
    );
  }
}
