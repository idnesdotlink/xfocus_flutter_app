import 'dart:async';
import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app.dart';
import 'package:xfocus_mobile/service/camera.dart';
import 'package:camera/camera.dart';

final application = App();

void logError(String code, String message) =>
    print('Error: $code\nError Message: $message');

main() {
  runZoned(() async {
    try {
      cameras = await availableCameras();
    } on CameraException catch (e) {
      logError(e.code, e.description);
    }
    runApp(application);
  }, onError: (dynamic error, dynamic stack) {
    print(error);
    print(stack);
  });
}
