class User {
  String firstName;
  String lastName;
  String phoneNumber;
  String email;
  String password;
  String userType;
  bool agreeToTerm;

  User({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.userType,
    required this.agreeToTerm,
  });

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'phoneNumber': phoneNumber,
        'email': email,
        'userType': userType,
        'agreeToTerm': agreeToTerm,
      };
}
