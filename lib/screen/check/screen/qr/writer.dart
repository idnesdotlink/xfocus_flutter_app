/* import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrwriter extends StatefulWidget {
  _QrwriterState createState() => _QrwriterState();
}

class _QrwriterState extends State<Qrwriter> {
  String _qrData = '123456';

  _displayQr() {
    return QrImage(
      data: _qrData,
      size: 200.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: _displayQr(),
      ),
    );
  }
} */

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrwriter extends StatefulWidget {
  @override
  _QrwriterState createState() => _QrwriterState();
}

class _QrwriterState extends State<Qrwriter> {
  static const double _topSectionTopPadding = 50.0;
  static const double _topSectionBottomPadding = 20.0;
  static const double _topSectionHeight = 50.0;

  String _dataString = "Hello from this QR code!";
  String _inputErrorText;
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _contentWidget(),
      resizeToAvoidBottomPadding: true,
    );
  }

  @override
  didUpdateWidget(Widget oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {});
  }

  _contentWidget() {
    // final bodyHeight = MediaQuery.of(context).size.height -
    // MediaQuery.of(context).viewInsets.bottom;
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: _topSectionTopPadding,
              left: 20.0,
              right: 10.0,
              bottom: _topSectionBottomPadding,
            ),
            child: Container(
              height: _topSectionHeight,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: "Enter a custom message",
                        errorText: _inputErrorText,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: FlatButton(
                      child: Text("SUBMIT"),
                      onPressed: () {
                        setState(() {
                          _dataString = _textController.text;
                          _inputErrorText = null;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: QrImage(
                data: _dataString,
                onError: (ex) {
                  print("[QR] ERROR - $ex");
                  setState(() {
                    _inputErrorText =
                        "Error! Maybe your input value is too long?";
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
