
import 'dart:async';

import 'package:flutter/services.dart';

class CustomGeofencing {
  static const MethodChannel _channel =
      const MethodChannel('custom_geofencing');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
