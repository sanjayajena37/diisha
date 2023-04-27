import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as service;
import 'package:get/get.dart';
import '../providers/Const.dart';

class ConnectorControl extends GetConnect {
  late Dio dio;
  String? accessToken = "";

  @override
  void onInit() {
    dio = Dio();
    super.onInit();
  }

  Map<String, dynamic> failedMap = {
    Const.STATUS: Const.FAILED,
    Const.MESSAGE: Const.NETWORK_ISSUE,
  };
  Map<String, dynamic> alreadyMap = {
    Const.STATUS: Const.FAILED,
    Const.MESSAGE: "Already Available",
  };


  GETMETHODCALL(
      {required String api, required Function fun, Function? failed}) async {
    print("<<>>>>>API CALL>>>>>>\n\n\n\n\n\n\n\n\n" + api);
    try {
      service.Response response = await dio.get(api,
          options: Options(headers: {
            "Access-Control-Allow-Origin": "*",
            /*"Authorization": "Bearer " +
                ((Get.find<MainController>().user != null)
                    ? Get.find<MainController>().user?.token ?? ""
                    : ""),
            "PersonnelNo": ((Get.find<MainController>().user != null)
                ? Aes.encrypt(
                Get.find<MainController>().user?.personnelNo ?? "")
                : ""),
            "Userid": ((Get.find<MainController>().user != null)
                ? Aes.encrypt(Get.find<MainController>().user?.logincode ?? "")
                : "")*/
          },));
      if (response.statusCode == 200) {
        try {
          fun(response.data);
        } catch (e) {
          print("Message is: " + e.toString());
        }
      } else if (response.statusCode == 500) {
        print("MI II>>" + response.data);
        failed!(response.data);
      } else if(response.statusCode== 401){
        print("MI II>>" + response.data);
        failed!(failedMap);
      }
    } on DioError catch (e) {
      print("Connector Response Error>>" + jsonEncode(e.response?.headers.map));
      /*print("(e.response?.headers.map.containsKey(\"www-authenticate\"))!"+((e.response?.headers.map.containsKey("www-authenticate"))!).toString());
      print("Status Code"+((e.response?.statusCode!).toString()));
      print("value"+(e.response?.headers.map["www-authenticate"]![0])!);*/
      /*if (e.response?.statusCode == 401 &&
          (e.response?.headers.map.containsKey("www-authenticate"))! &&
          e.response?.headers.map["www-authenticate"]?.length == 2 &&
          (e.response?.headers.map["www-authenticate"]![0]
              .contains("invalid_token"))! &&
          (e.response?.headers.map["www-authenticate"]![1]
              .contains("The token expired at"))!) {*/
      if(e.response?.statusCode == 401){

      } else {
        switch (e.type) {
          case DioErrorType.connectionTimeout:
          case DioErrorType.cancel:
          case DioErrorType.sendTimeout:
          case DioErrorType.receiveTimeout:
          case DioErrorType.unknown:
            failed!(failedMap);
            // Snack.callError("Unauthorised");
            break;
          case DioErrorType.badResponse:
            failed!(e.response?.data ?? "");
        }
      }
    }
  }

  POSTMETHOD(
      {required String api, dynamic? json, required Function fun}) async {
    try {
      print("API NAME:>" + api);
      service.Response response = await dio.post(
        api,
        options: Options(headers: {

        },responseType: ResponseType.json),
        data: (json != null) ? jsonEncode(json) : null,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        try {
          fun(response.data);
        } catch (e) {
          print("Message is: " + e.toString());
        }
      } else if (response.statusCode == 417) {
        fun(response.data);
      } else {
        print("Message is: >>1");
        fun(failedMap);
      }
    } on DioError catch (e) {
      /*if (e.response?.statusCode == 401 &&
          (e.response?.headers.map.containsKey("www-authenticate"))! &&
          e.response?.headers.map["www-authenticate"]?.length == 2 &&
          (e.response?.headers.map["www-authenticate"]![0]
              .contains("invalid_token"))! &&
          (e.response?.headers.map["www-authenticate"]![1]
              .contains("The token expired at"))!) {*/
      if(e.response?.statusCode == 401){

      } else {
        switch (e.type) {
          case DioErrorType.connectionTimeout:
          case DioErrorType.cancel:
          case DioErrorType.sendTimeout:
          case DioErrorType.receiveTimeout:
          case DioErrorType.unknown:
            fun(failedMap);
            break;
          case DioErrorType.badResponse:
            fun(e.response?.data);
        }
      }
    }
  }


}
