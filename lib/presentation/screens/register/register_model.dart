// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  String? status;
  int? code;
  ResponseMessage? responseMessage;

  RegisterModel({
    this.status,
    this.code,
    this.responseMessage,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        status: json["status"],
        code: json["code"],
        responseMessage: json["response_message"] == null
            ? null
            : ResponseMessage.fromJson(json["response_message"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "response_message": responseMessage?.toJson(),
      };
}

class ResponseMessage {
  bool? otpSent;

  ResponseMessage({
    this.otpSent,
  });

  factory ResponseMessage.fromJson(Map<String, dynamic> json) =>
      ResponseMessage(
        otpSent: json["OTPSent"],
      );

  Map<String, dynamic> toJson() => {
        "OTPSent": otpSent,
      };
}
