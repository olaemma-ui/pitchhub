// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginObject {
  final String email;
  final String password;
  
  LoginObject({
    required this.email,
    required this.password,
  });

  LoginObject copyWith({
    String? email,
    String? password,
  }) {
    return LoginObject(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory LoginObject.fromMap(Map<String, dynamic> map) {
    return LoginObject(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginObject.fromJson(String source) => LoginObject.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginObject(email: $email, password: $password)';

  @override
  bool operator ==(covariant LoginObject other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
