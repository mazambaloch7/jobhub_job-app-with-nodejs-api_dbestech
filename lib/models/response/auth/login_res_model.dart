import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
    LoginResponseModel({
        required this.id,
        required this.userToken,
    });

    final String id;
    final String userToken;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        id: json["_id"],
        userToken: json["userToken"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "userToken": userToken,
    };
}
