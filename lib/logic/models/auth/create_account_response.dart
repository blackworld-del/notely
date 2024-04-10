class StrapiCreateAccountResponse {
  final String jwt;
  final User user;

  StrapiCreateAccountResponse({required this.jwt, required this.user});

  factory StrapiCreateAccountResponse.fromJson(Map<String, dynamic> json) {
    return StrapiCreateAccountResponse(
      jwt: json['jwt'],
      user: User.fromJson(json['user']),
    );
  }
}

class User {
  final String username;
  final String email;
  final bool confirmed;

  User({required this.username, required this.email, required this.confirmed});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      email: json['email'],
      confirmed: json['confirmed'],
    );
  }
}
