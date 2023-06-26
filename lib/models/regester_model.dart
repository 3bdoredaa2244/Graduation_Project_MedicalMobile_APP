class LoginModel {
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? password;

  LoginModel({
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.password,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        username: json['username'] as String?,
        email: json['email'] as String?,
        password: json['password'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'username': username,
        'email': email,
        'password': password,
      };
}
