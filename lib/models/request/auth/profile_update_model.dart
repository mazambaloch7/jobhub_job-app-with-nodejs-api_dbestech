import 'dart:convert';

ProfileUpdateReq profileUpdateReqFromJson(String str) => ProfileUpdateReq.fromJson(json.decode(str));

String profileUpdateReqToJson(ProfileUpdateReq data) => json.encode(data.toJson());

class ProfileUpdateReq {
    ProfileUpdateReq({
        required this.location,
        required this.phone,
        required this.profile,
        required this.skills,
    });

    final String location;
    final String phone;
    final String profile;
    final List<String> skills;

    factory ProfileUpdateReq.fromJson(Map<String, dynamic> json) => ProfileUpdateReq(
        location: json["location"],
        phone: json["phone"],
        profile: json["profile"],
        skills: List<String>.from(json["skills"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "location": location,
        "phone": phone,
        "profile": profile,
        "skills": List<dynamic>.from(skills.map((x) => x)),
    };
}
