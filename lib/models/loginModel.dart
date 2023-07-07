class LoginModel {
  String userssn = '';
  String username = '';
  String usermail = '';
  String expiration = '';

  String token = '';

  LoginModel.fromJson(Map<String, dynamic> json) {
    userssn = json['userId'];
    username = json['userName'];
    usermail = json['email'];
    expiration = json['expiration'];

    // message = json['message'];
    token = json['token'];
  }
}
