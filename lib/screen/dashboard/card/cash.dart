import 'package:flutter/material.dart';
import '../dashboard_card.dart';
import '../table/cash.dart';

class CashCard extends StatefulWidget {
  CashCardState createState() => CashCardState();
}

class CashCardState extends State<CashCard> {
  @override
  Widget build(BuildContext context) {
    return DashboardCard(DataTable(columns: dataColumn, rows: dataRow));
  }
}
