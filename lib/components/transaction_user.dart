import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tenis',
      value: 300.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.97,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta #01',
      value: 211.97,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta #02',
      value: 211.97,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta #03',
      value: 211.97,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta #04',
      value: 211.97,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Conta #05',
      value: 211.97,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't19',
      title: 'Conta #06',
      value: 211.97,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't20',
      title: 'Conta #07',
      value: 211.97,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
