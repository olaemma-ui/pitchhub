// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserData {
  final String id;
  final String firstName;
  final String lastName;
  final String userType;
  final String phoneNumber;
  final String email;
  final bool isDeleted;
  final bool subscribedToNewsletter;
  final bool agreeToTerm;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  UserData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userType,
    required this.phoneNumber,
    required this.email,
    required this.isDeleted,
    required this.subscribedToNewsletter,
    required this.agreeToTerm,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  UserData copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? userType,
    String? phoneNumber,
    String? email,
    bool? isDeleted,
    bool? subscribedToNewsletter,
    bool? agreeToTerm,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) {
    return UserData(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      userType: userType ?? this.userType,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      isDeleted: isDeleted ?? this.isDeleted,
      subscribedToNewsletter:
          subscribedToNewsletter ?? this.subscribedToNewsletter,
      agreeToTerm: agreeToTerm ?? this.agreeToTerm,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      v: v ?? this.v,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': id,
      'firstName': firstName,
      'lastName': lastName,
      'userType': userType,
      'phoneNumber': phoneNumber,
      'email': email,
      'isDeleted': isDeleted,
      'subscribedToNewsletter': subscribedToNewsletter,
      'agreeToTerm': agreeToTerm,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
      '__v': v,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['_id'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      userType: map['userType'] as String,
      phoneNumber: map['phoneNumber'] as String,
      email: map['email'] as String,
      isDeleted: map['isDeleted'] as bool,
      subscribedToNewsletter: map['subscribedToNewsletter'] as bool,
      agreeToTerm: map['agreeToTerm'] as bool,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int),
      v: map['__v'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserData(id: $id, firstName: $firstName, lastName: $lastName, userType: $userType, phoneNumber: $phoneNumber, email: $email, isDeleted: $isDeleted, subscribedToNewsletter: $subscribedToNewsletter, agreeToTerm: $agreeToTerm, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(covariant UserData other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.userType == userType &&
        other.phoneNumber == phoneNumber &&
        other.email == email &&
        other.isDeleted == isDeleted &&
        other.subscribedToNewsletter == subscribedToNewsletter &&
        other.agreeToTerm == agreeToTerm &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.v == v;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        userType.hashCode ^
        phoneNumber.hashCode ^
        email.hashCode ^
        isDeleted.hashCode ^
        subscribedToNewsletter.hashCode ^
        agreeToTerm.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        v.hashCode;
  }
}
