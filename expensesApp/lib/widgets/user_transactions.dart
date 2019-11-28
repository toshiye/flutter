import 'package:flutter/material.dart';

import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';

import '../models/transaction.dart';

class UserTransactions extends StatefulWidget{
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  @override
  final List<Transaction> _userTransactions = [
    Transaction(
        id: '1',
        title: 'New Shoes',
        amount: 35.50,
        date: DateTime.now()
    ),
    Transaction(
        id: '2',
        title: 'New Clothes',
        amount: 45.50,
        date: DateTime.now()
    )
  ];

  void _addNewTransaction(String txTitle, double txAmount){
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString()
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}