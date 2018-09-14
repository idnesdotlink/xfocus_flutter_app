import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrwriter extends StatefulWidget {
  _QrwriterState createState() => _QrwriterState();
}

class _QrwriterState extends State<Qrwriter> {
  String _qrData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: QrImage(
          data: '1234567890',
          size: 200.0,
        )
      ),
    );
  }
}