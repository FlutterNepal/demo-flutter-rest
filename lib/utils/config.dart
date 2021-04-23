import 'dart:io';

class Config {
  static const url = "4502f8a9db43.ngrok.io";
  static var path = "testApi/frontend/web/products";

  // static const uname = "";
  // static const upassword = "";

  static headers() {
    // final credentials = '$uname:$upassword';
    //final encodeCredentials = utf8.fuse(base64).encode(credentials);
    Map<String, String> header = {
      HttpHeaders.contentTypeHeader: "application/json",
      // HttpHeaders.authorizationHeader:"Basic" +encodeCredentials,
    };
    return header;
  }
}
