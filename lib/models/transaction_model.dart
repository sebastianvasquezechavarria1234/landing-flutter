import 'package:flutter/material.dart';

enum TransactionType { income, expense }

class TransactionModel {
  final String title;
  final String date;
  final double amount;
  final String percentage;
  final bool isPositiveChange;
  final IconData icon;
  final Color iconBackgroundColor;
  final TransactionType type;

  TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.percentage,
    required this.isPositiveChange,
    required this.icon,
    required this.iconBackgroundColor,
    this.type = TransactionType.expense,
  });
}
