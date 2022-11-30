class LoginModel {
  String? code;
  String? message;
  String? accessToken;

  LoginModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    accessToken = json['data']['accessToken'];
  }
}
