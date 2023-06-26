class LoginModel {
  String? username;
  String? password;

  LoginModel({this.username, this.password});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        username: json['username'] as String?,
        password: json['password'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
      };
}
