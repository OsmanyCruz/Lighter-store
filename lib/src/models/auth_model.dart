import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
    AuthModel({
        this.tokenType,
        this.expiresIn,
        this.accessToken,
        this.refreshToken,
    });

    String tokenType;
    int expiresIn;
    String accessToken;
    String refreshToken;

    factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        accessToken: json["access_token"],
        refreshToken: json["refresh_token"],
    );

    Map<String, dynamic> toJson() => {
        "token_type": tokenType,
        "expires_in": expiresIn,
        "access_token": accessToken,
        "refresh_token": refreshToken,
    };
}