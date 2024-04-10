import 'package:dio/dio.dart';
import 'package:notely/constants/api_endpoints.dart';

class AuthApi {
  static final Dio _dio = Dio();

  static Dio getInstance() {
    return _dio;
  }

  static authInitApi() {
    _dio.options.baseUrl = NotelyApiEndpoints.apiUrl;
  }

  static Future<dynamic> createAccount({
    required String email,
    required String username,
    required String password,
  }) async {
    try {
      await getInstance()
          .post(NotelyApiEndpoints.createAccountEndpoints, data: {
        'email': email,
        'username': username,
        'password': password,
      }).then((value) {
        return value;
      });
    } catch (e) {
      return e.toString();
    }
  }
}

class Notes {
  late String title;
  late String content;
  late String date;

  Notes.fromJson(Map<String, dynamic> data) {
    title = data["title"];
    content = data["content"];
    date = data["date"];
  }
}

class Project {
  late String project_name;
  late List<Notes> data;

  Project.fromJson(Map<String, dynamic> projectData) {
    project_name = projectData["name"];
    data = (projectData['data'] as List<dynamic>)
        .map((noteJson) => Notes.fromJson(noteJson))
        .toList();
  }
}

class Projects {
  late List<Project> projects_data;

  Projects.fromJson(Map<String, dynamic> projects) {
    projects_data = (projects["projects"] as List<dynamic>).map((e) {
      return Project.fromJson(e);
    }).toList();
  }
}

void main(List<String> args) {
  Projects test = Projects.fromJson(
    {
      "projects": [
        {
          "name": "name 1  ",
          "data": [
            {"title": "note name 1 ", "content": "content", "date": "date"},
            {
              "second note title": "note name",
              "content": "content",
              "date": "date"
            }
          ]
        },
        {
          "name": "name 2 ",
          "data": [
            {"title": "note name 2 ", "content": "content", "date": "date"},
            {"title": "note name", "content": "content", "date": "date"}
          ]
        }
      ]
    },
  );

  print(test.projects_data);
}
