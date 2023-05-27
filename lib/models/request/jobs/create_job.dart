import 'dart:convert';

String createJobsRequestToJson(CreateJobsRequest data) => json.encode(data.toJson());

class CreateJobsRequest {
    CreateJobsRequest({
        required this.title,
        required this.location,
        required this.company,
        required this.hiring,
        required this.description,
        required this.salary,
        required this.period,
        required this.contract,
        required this.imageUrl,
        required this.agentId,
        required this.requirements,
    });

    final String title;
    final String location;
    final String company;
    final bool hiring;
    final String description;
    final String salary;
    final String period;
    final String contract;
    final String imageUrl;
    final String agentId;
    final List<String> requirements;

    Map<String, dynamic> toJson() => {
        "title": title,
        "location": location,
        "company": company,
        "hiring": hiring,
        "description": description,
        "salary": salary,
        "period": period,
        "contract": contract,
        "imageUrl": imageUrl,
        "agentId": agentId,
        "requirements": List<dynamic>.from(requirements.map((x) => x)),
    };
}
