import 'dart:convert';

List<SearchModel> searchModelFromJson(String str) => List<SearchModel>.from(json.decode(str).map((x) => SearchModel.fromJson(x)));


class SearchModel {
    SearchModel({
        required this.id,
        required this.title,
        required this.location,
        required this.company,
        required this.hiring,
        required this.salary,
        required this.period,
        required this.contract,
        required this.imageUrl,
    });

    final String id;
    final String title;
    final String location;
    final String company;
    final bool hiring;
    final String salary;
    final String period;
    final String contract;
    final String imageUrl;

    factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        id: json["_id"],
        title: json["title"],
        location: json["location"],
        company: json["company"],
        hiring: json["hiring"],
        salary: json["salary"],
        period: json["period"],
        contract: json["contract"],
        imageUrl: json["imageUrl"],
    );

}
