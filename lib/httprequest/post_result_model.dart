import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResultModel {
  String name = "";
  String job = "";
  String id = "";
  String createdAt = "";

  PostResultModel(
      {required this.name,
      required this.job,
      required this.id,
      required this.createdAt});

  factory PostResultModel.createPostResult(Map<String, dynamic> object) {
    return PostResultModel(
        name: object['name'],
        job: object['job'],
        id: object['id'],
        createdAt: object['createdAt']);
  }

  static Future<PostResultModel> connectToAPI(String name, String job) async {
    String apiUrl = "https://reqres.in/api/users";

    var apiResult = await http.post(apiUrl, body: {"name": name, "job": job});

    var jsonOBJ = json.decode(apiResult.body);
    return PostResultModel.createPostResult(jsonOBJ);
  }
}
