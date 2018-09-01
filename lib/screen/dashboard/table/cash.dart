import 'package:flutter/material.dart';

var dataRow = <DataRow>[
  DataRow(
    cells: <DataCell>[
      DataCell(Text('Saldo Awal'), onTap: () {}),
      DataCell(Text('100000'), onTap: () {}),
    ],
  ),
  DataRow(
    cells: <DataCell>[
      DataCell(Text('Debit'), onTap: () {}),
      DataCell(Text('100000'), onTap: () {}),
    ],
  ),
  DataRow(
    cells: <DataCell>[
      DataCell(Text('Kredit'), onTap: () {}),
      DataCell(Text('100000'), onTap: () {}),
    ],
  ),
  DataRow(
    cells: <DataCell>[
      DataCell(Text('Saldo Akhir'), onTap: () {}),
      DataCell(Text('100000'), onTap: () {}),
    ],
  ),
];

var dataColumn = <DataColumn>[
  DataColumn(
    label: const Text(''),
    onSort: null,
  ),
  DataColumn(
    label: const Text('Nominal'),
    onSort: null,
  ),
];
