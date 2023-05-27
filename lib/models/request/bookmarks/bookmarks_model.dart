import 'dart:convert';

BookmarkReqModel bookmarkReqModelFromJson(String str) => BookmarkReqModel.fromJson(json.decode(str));

String bookmarkReqModelToJson(BookmarkReqModel data) => json.encode(data.toJson());

class BookmarkReqModel {
    BookmarkReqModel({
        required this.job,
        required this.userId,
        required this.title,
        required this.imageUrl,
        required this.company,
        required this.location,
    });

    final String job;
    final String userId;
    final String title;
    final String imageUrl;
    final String company;
    final String location;

    factory BookmarkReqModel.fromJson(Map<String, dynamic> json) => BookmarkReqModel(
        job: json["job"],
        userId: json["userId"],
        title: json["title"],
        imageUrl: json["imageUrl"],
        company: json["company"],
        location: json["location"],
    );

    Map<String, dynamic> toJson() => {
        "job": job,
        "userId": userId,
        "title": title,
        "imageUrl": imageUrl,
        "company": company,
        "location": location,
    };
}
