import 'dart:convert';

import 'package:http/http.dart' as http;

class PostModel {
  String name = "";
  String job = "";
  String createAt = "";
  String id = "";

  PostModel({
    required this.name,
    required this.job,
    required this.createAt,
    required this.id,
  });

  factory PostModel.createPostModel(Map<String, dynamic> object) {
    return PostModel(
        name: object['name'],
        job: object['job'],
        createAt: object['createAt'],
        id: object['id']);
  }

  static Future<PostModel> connectToApi(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});

    var jsonOBJ = jsonDecode(apiResult.body);
    return PostModel.createPostModel(jsonOBJ);
  }
}
