

class UserAuth{
  String? id;
  String name;
  String email;
  String phone;
  String password;
  String passwordConfirm;

  UserAuth(
      {this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.password,
      required this.passwordConfirm});

  toMap(){
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'passwordConfirm': passwordConfirm,
    };
  }
}
