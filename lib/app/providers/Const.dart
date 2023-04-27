// import 'package:bms/providers/aad/model/config.dart';
import 'package:flutter/cupertino.dart';

import 'ApiFactory.dart';

class Const {
  static const String STATUS = "status";
  static const String SUCCESS = "success";
  static const String FAILED = "failure";
  static const String MESSAGE = "message";
  static const String NETWORK_ISSUE = "Network issue";
  static const String SAVED_MSG = "Record Saved Successfully";
  static String instrumentationKey =
      ApiFactory.Enviroment.toLowerCase() == "uat"
          ? "b15b7ae4-ff42-4746-862c-d0c852787f55"
          : "e06f192c-13bb-4c3c-8a01-ece4a1a80059";
  static const appVersion = '1.0.7';

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static const double SIXTY_MIN = 0.9;
  static double THIRTY_MIN = 1;
  static double FIFTEEN_MIN = 2;
  static double TEN_MIN = 3;
  static double FIVE_MIN = 5;
  static double ONE_MIN = 7;
}
