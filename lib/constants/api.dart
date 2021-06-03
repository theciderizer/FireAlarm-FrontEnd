// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';

import 'package:firealarm/caches/sharedpref/shared_preference_helper.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class APIs {
  static SharedPreferenceHelper _sharedPrefsHelper = SharedPreferenceHelper();

  static final String baseResourceUrl =
      "resourceservermultiproject.azurewebsites.net";

  static final String baseAuthenticationUrl =
      "multiprojectauthenticationserver.azurewebsites.net";

  static String _userToken = "";

  static String get userToken {
    _sharedPrefsHelper.userToken.then((token) {
      if (token != null) {
        _userToken = token;
      }
    });
    return _userToken;
  }

  static var deviceLogs = "/api/monitor/deviceLogs";
  static var myDevices = "/api/account/myDevices";
  static var turnOnDeviceRoute = "/api/device/turnOnDevice";
  static var turnOffDeviceRoute = "/api/device/turnOffDevice";
}
