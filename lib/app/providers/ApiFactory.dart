import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class ApiFactory {
  // Developing R & D URLS
  // https://web-bms-qa.azurewebsites.net/
  // https://api-bms-qa.azurewebsites.net/

  //RELEASE WORK URLS
  //https://bmswebfrontend-uat.azurewebsites.net
  //https://api-bms-dev.azurewebsites.net

  ////AKS
  // https://api-login-bms-dev.zeeconnect.in
  // https://api-common-bms-dev.zeeconnect.in
  // https://api-programming-bms-dev.zeeconnect.in

  static String LOCAL_URL = "http://localhost:9999";
  // static String WEB_URL = "https://bmswebfrontend-uat.azurewebsites.net";
  static String Enviroment =
      const String.fromEnvironment('ENV', defaultValue: 'dev');
  static String WEB_URL = Enviroment.toLowerCase() == "uat"
      ? "https://app-common-bms-uat.zeeconnect.in"
      : "https://app-common-bms-dev.zeeconnect.in";

  static String BASE_URL = Enviroment.toLowerCase() == "uat"
      ? "https://api-login-bms-uat.zeeconnect.in"
      : "https://api-login-bms-dev.zeeconnect.in";
  static String BASE_URL_COMMON = Enviroment.toLowerCase() == "uat"
      ? "https://api-common-bms-uat.zeeconnect.in"
      : "https://api-common-bms-dev.zeeconnect.in";
  // static String AZURE_REDIRECT_UI = (kReleaseMode ? WEB_URL : LOCAL_URL) + "/dashboard";
  static String AZURE_REDIRECT_UI = (kReleaseMode ? WEB_URL : LOCAL_URL);
  static String PROGRAMMING_URL = (kReleaseMode
      ? Enviroment.toLowerCase() == "uat"
          ? "https://app-programming-bms-uat.zeeconnect.in"
          : "https://app-programming-bms-dev.zeeconnect.in"
      : "http://localhost:9992");
  static String ADMIN_URL = (kReleaseMode
      ? Enviroment.toLowerCase() == "uat"
          ? "https://app-admin-bms-uat.zeeconnect.in"
          : "https://app-admin-bms-dev.zeeconnect.in"
      : "http://localhost:9993");

  static String LOGIN_URL = (kReleaseMode
      ? Enviroment.toLowerCase() == "uat"
          ? "https://app-login-bms-uat.zeeconnect.in"
          : "https://app-login-bms-dev.zeeconnect.in"
      : "http://localhost:9991");

  // static String PROGRAMMING_URL = "https://app-programming-bms-dev.zeeconnect.in";

  static String MS_TOKEN =
      "https://login.microsoftonline.com/56bd48cd-f312-49e8-b6c7-7b5b926c03d6/oauth2/token";

  static String LOGIN_API = BASE_URL + "/api/Login/GetLogin?";
  static String LOGOUT_API = BASE_URL + "/api/Login/GetLogout?PersonnelNo=";
  static String USER_INFO = BASE_URL + "/api/Login/GetUserinfo";
  static String PERMISSION_API =
      BASE_URL_COMMON + "/api/MDI/GetAllFormDetailsAndPermission?Userid=";
  static String MS_PROFILE = BASE_URL + "/api/Login/PostUserProfile";
  static String MS_TOKEN_BACKEND = BASE_URL + "/api/Login/PostApiToken";

  static String MS_TOKEN1 =
      "https://login.microsoftonline.com/56bd48cd-f312-49e8-b6c7-7b5b926c03d6/oauth2/v2.0/token";
  static String MS_AUTH =
      "https://login.microsoftonline.com/56bd48cd-f312-49e8-b6c7-7b5b926c03d6/oauth2/v2.0/token";

  // static String MS_GRAPH_USER_DETAILS = "https://graph.microsoft.com/v1.0/me?\$select=employeeId,mail,givenName";
  static String MS_GRAPH_USER_DETAILS =
      "https://graph.microsoft.com/v1.0/me?\$select=employeeId,mail,givenName,jobTitle,givenName,id,mobilePhone,displayName";
  static String MS_LOGOUT =
      "https://login.microsoftonline.com/common/oauth2/v2.0/logout?post_logout_redirect_uri=";

  static String SEARCH_SEND_NAME(
    String mail,
    String pageName,
  ) {
    var currentDate =
        DateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(DateTime.now());
    return BASE_URL_COMMON +
        "/api/MDI/SaveApplicationPagesFootprintData?UserName=$mail&PageName=$pageName&AccessDate=$currentDate";
  }
}
