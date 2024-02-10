import 'dart:convert';

class User {
    final String? firstName;
    final String? lastName;
    final String? phoneNumber;
    final String? email;
    final String? password;
    final String? userType;
    final bool? agreeToTerm;

    User({
        this.firstName,
        this.lastName,
        this.phoneNumber,
        this.email,
        this.password,
        this.userType,
        this.agreeToTerm,
    });

    User copyWith({
        String? firstName,
        String? lastName,
        String? phoneNumber,
        String? email,
        String? password,
        String? userType,
        bool? agreeToTerm,
    }) => 
        User(
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            email: email ?? this.email,
            password: password ?? this.password,
            userType: userType ?? this.userType,
            agreeToTerm: agreeToTerm ?? this.agreeToTerm,
        );

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        firstName: json["firstName"],
        lastName: json["lastName"],
        phoneNumber: json["phoneNumber"],
        email: json["email"],
        password: json["password"],
        userType: json["userType"],
        agreeToTerm: json["agreeToTerm"],
    );

    Map<String, dynamic> toMap() => {
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "email": email,
        "password": password,
        "userType": userType,
        "agreeToTerm": agreeToTerm,
    };
}
