// To parse this JSON data, do
//
//     final finalRegisterModel = finalRegisterModelFromJson(jsonString);

import 'dart:convert';

FinalRegisterModel finalRegisterModelFromJson(String str) =>
    FinalRegisterModel.fromJson(json.decode(str));

String finalRegisterModelToJson(FinalRegisterModel data) =>
    json.encode(data.toJson());

class FinalRegisterModel {
  String? status;
  int? code;
  ResponseMessage? responseMessage;

  FinalRegisterModel({
    this.status,
    this.code,
    this.responseMessage,
  });

  factory FinalRegisterModel.fromJson(Map<String, dynamic> json) =>
      FinalRegisterModel(
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
  User? user;
  bool? saved;
  String? message;

  ResponseMessage({
    this.user,
    this.saved,
    this.message,
  });

  factory ResponseMessage.fromJson(Map<String, dynamic> json) =>
      ResponseMessage(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        saved: json["saved"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "saved": saved,
        "message": message,
      };
}

class User {
  String? userId;
  String? firstName;
  String? lastName;
  String? primaryMobile;
  String? token;
  String? primaryEmail;
  bool? emailVerified;
  List<RegisteredForService>? registeredForServices;

  User({
    this.userId,
    this.firstName,
    this.lastName,
    this.primaryMobile,
    this.token,
    this.primaryEmail,
    this.emailVerified,
    this.registeredForServices,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        primaryMobile: json["primaryMobile"],
        token: json["token"],
        primaryEmail: json["primaryEmail"],
        emailVerified: json["emailVerified"],
        registeredForServices: json["registeredForServices"] == null
            ? []
            : List<RegisteredForService>.from(json["registeredForServices"]!
                .map((x) => RegisteredForService.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "firstName": firstName,
        "lastName": lastName,
        "primaryMobile": primaryMobile,
        "token": token,
        "primaryEmail": primaryEmail,
        "emailVerified": emailVerified,
        "registeredForServices": registeredForServices == null
            ? []
            : List<dynamic>.from(registeredForServices!.map((x) => x.toJson())),
      };
}

class RegisteredForService {
  int? serviceId;
  String? serviceName;
  int? userServiceId;
  String? referralCode;
  String? profilePicture;
  String? displayName;
  bool? active;
  dynamic referenceCode;

  RegisteredForService({
    this.serviceId,
    this.serviceName,
    this.userServiceId,
    this.referralCode,
    this.profilePicture,
    this.displayName,
    this.active,
    this.referenceCode,
  });

  factory RegisteredForService.fromJson(Map<String, dynamic> json) =>
      RegisteredForService(
        serviceId: json["serviceId"],
        serviceName: json["serviceName"],
        userServiceId: json["userServiceId"],
        referralCode: json["referralCode"],
        profilePicture: json["profilePicture"],
        displayName: json["displayName"],
        active: json["active"],
        referenceCode: json["referenceCode"],
      );

  Map<String, dynamic> toJson() => {
        "serviceId": serviceId,
        "serviceName": serviceName,
        "userServiceId": userServiceId,
        "referralCode": referralCode,
        "profilePicture": profilePicture,
        "displayName": displayName,
        "active": active,
        "referenceCode": referenceCode,
      };
}
