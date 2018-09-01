import 'package:flutter/material.dart';

var s = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  height: 1.2,
);
var s2 = TextStyle(
  fontSize: 14.0,
  height: 1.2,
);

var c = TableRow(children: <TableCell>[
  TableCell(
    child: Text(
      'Kas',
      style: s,
    ),
  ),
  TableCell(
    child: Text(
      '100%',
      style: s2,
    ),
  ),
  TableCell(
    child: Text(
      '1500000',
      style: s2,
    ),
  )
]);

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
              color: Colors.grey.shade200,
              height: 130.0,
              width: 250.0,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Table(
                  children: <TableRow>[
                    c,
                    c,
                    c,
                    c,
                    c,
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Text('test'),
            ),
          )
        ],
      ),
    );
  }
}
