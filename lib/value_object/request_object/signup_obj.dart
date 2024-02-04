// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SignupRequest {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String password;
  final String userType;
  final bool agreeToTerm;

  SignupRequest({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.userType,
    required this.agreeToTerm,
  });

  SignupRequest copyWith({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? email,
    String? password,
    String? userType,
    bool? agreeToTerm,
  }) {
    return SignupRequest(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      password: password ?? this.password,
      userType: userType ?? this.userType,
      agreeToTerm: agreeToTerm ?? this.agreeToTerm,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      'userType': userType,
      'agreeToTerm': agreeToTerm,
    };
  }

  factory SignupRequest.fromMap(Map<String, dynamic> map) {
    return SignupRequest(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      phoneNumber: map['phoneNumber'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      userType: map['userType'] as String,
      agreeToTerm: map['agreeToTerm'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupRequest.fromJson(String source) =>
      SignupRequest.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SignupRequest(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email, password: $password, userType: $userType, agreeToTerm: $agreeToTerm)';
  }

  @override
  bool operator ==(covariant SignupRequest other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName &&
        other.lastName == lastName &&
        other.phoneNumber == phoneNumber &&
        other.email == email &&
        other.password == password &&
        other.userType == userType &&
        other.agreeToTerm == agreeToTerm;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        phoneNumber.hashCode ^
        email.hashCode ^
        password.hashCode ^
        userType.hashCode ^
        agreeToTerm.hashCode;
  }
}
