// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class DashboardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      ),
      elevation: 1.0,
      child: Padding(
          padding: EdgeInsets.all(0.0),
          child: DataTable(columns: <DataColumn>[
            DataColumn(
              label: const Text(''),
            ),
            DataColumn(
              label: const Text('Nominal'),
            ),
          ], rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('Saldo Awal'), onTap: () {}),
              DataCell(Text('100000'), onTap: () {}),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Debit'), onTap: () {}),
              DataCell(Text('100000'), onTap: () {}),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Kredit'), onTap: () {}),
              DataCell(Text('100000'), onTap: () {}),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Saldo Akhir'), onTap: () {}),
              DataCell(Text('100000'), onTap: () {}),
            ]),
          ])),
    );
  }
}
