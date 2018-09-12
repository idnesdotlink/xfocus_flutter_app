import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;
class QrwriterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VersionOne(pageTitle: 'Qr Writer'),
      body: Container(
        child: QrImage(
          data: "1234567890",
          size: 200.0,
        ),
      ),
    );
  }
}