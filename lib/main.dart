import 'package:flutter/material.dart';
import 'package:xfocus_mobile/app.dart';

final application = App();

void main() {
  debugPrint('debug print');
  try {
    return runApp(application);
  } catch (e) {} finally {}
}
