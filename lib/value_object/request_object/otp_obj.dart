// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OtpVerificationObj {
  final String code;

  OtpVerificationObj({
    required this.code,
  });

  OtpVerificationObj copyWith({
    String? code,
  }) {
    return OtpVerificationObj(
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory OtpVerificationObj.fromMap(Map<String, dynamic> map) {
    return OtpVerificationObj(
      code: map['code'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OtpVerificationObj.fromJson(String source) =>
      OtpVerificationObj.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'OtpVerificationObj(code: $code)';

  @override
  bool operator ==(covariant OtpVerificationObj other) {
    if (identical(this, other)) return true;

    return other.code == code;
  }

  @override
  int get hashCode => code.hashCode;
}
