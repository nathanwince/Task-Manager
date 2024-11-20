import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiService {
  final String baseUrl = 'http://localhost:8000'; // Ensure this matches your backend
  final storage = FlutterSecureStorage(); // Secure storage for auth data

  // Login User
  Future<bool> loginUser(String email, String password) async {
    final url = Uri.parse('$baseUrl/users/users/login/');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final token = data['token']; // Ensure this matches your backend's key
      final userId = data['id']; // Ensure this matches your backend's key

      // Store token and userId
      await storage.write(key: 'authToken', value: token);
      await storage.write(key: 'userId', value: userId.toString());
      return true;
    } else {
      return false; // Login failed
    }
  }

  // Sign Up User
  Future<bool> signUpUser(String name, String email, String password) async {
    final url = Uri.parse('$baseUrl/users/users/');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      return true; // Sign-up successful
    }

    return false; // Sign-up failed
  }

  // Fetch Daily Tasks
 Future<List<Map<String, dynamic>>> fetchDailyTasks(int userId) async {
  try {
    final response = await http.get(Uri.parse('$baseUrl/tasks/tasks/today/$userId'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);

      // Transform tasks to ensure priority is properly mapped
      return data.map((task) {
        // Cast task to Map<String, dynamic>
        final taskMap = task as Map<String, dynamic>;

        // Check and map priority to string values
        final priorityValue = taskMap["priority"];
        String priority;
        if (priorityValue is int) {
          switch (priorityValue) {
            case 1:
              priority = "High";
              break;
            case 2:
              priority = "Medium";
              break;
            case 3:
              priority = "Low";
              break;
            default:
              priority = "Low"; // Default to "Low"
          }
        } else if (priorityValue is String) {
          priority = priorityValue; // Use as-is if it's already a string
        } else {
          priority = "Low"; // Fallback in case of invalid data
        }

        // Return transformed task data
        return {
          ...taskMap,
          "priority": priority, // Overwrite priority with string value
        };
      }).toList(); // Convert Iterable to List
    } else {
      throw Exception('Failed to load tasks for today');
    }
  } catch (e) {
    print('Error fetching daily tasks: $e');
    rethrow;
  }
}

// Fetch User Streak and Progress
Future<Map<String, dynamic>> fetchUserProgress(int userId) async {
  final url = Uri.parse('http://localhost:8000/users/users/$userId/progress');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to fetch user progress: ${response.statusCode}');
  }
}

 // Fetch the daily motivation quote
  Future<Map<String, dynamic>> fetchDailyQuote() async {
    final url = Uri.parse('$baseUrl/motivation/daily');
    try {
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to fetch daily motivation');
      }
    } catch (e) {
      print('Error fetching daily quote: $e');
      rethrow;
    }
  }

  // Fetch tasks for a specific date
 Future<List<Map<String, dynamic>>> fetchTasksForDate(String date, int userId) async {
  final url = "http://localhost:8000/tasks/tasks/$date/$userId";

  try {
    final response = await http.get(Uri.parse(url));

    // Log the response for debugging
    print("API Response: ${response.body}");

    if (response.statusCode == 200) {
      final List tasks = json.decode(response.body);
      return tasks.map<Map<String, dynamic>>((task) {
        return {
          "title": task["title"],
          "description": task["description"],
          "time": task["due_date"], // Ensure this matches the backend structure
          "priority": task["priority"].toString(), // Convert priority to string
        };
      }).toList();
    } else {
      print("Error: ${response.statusCode} - ${response.reasonPhrase}");
      throw Exception("Failed to fetch tasks");
    }
  } catch (e) {
    print("Error in fetchTasksForDate: $e");
    rethrow;
  }
}

  
  // Update task status
Future<void> updateTaskStatus(int taskId, bool isCompleted) async {
  final url = Uri.parse('http://localhost:8000/tasks/tasks/$taskId/complete');
  try {
    final response = await http.put(
      url,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to mark task as complete');
    }
  } catch (e) {
    print('Error updating task status: $e');
    rethrow;
  }
}

 // Create Bookmark
  Future<void> createBookmark({required int userId, int? taskId, int? quoteId}) async {
    final url = Uri.parse('$baseUrl/bookmarks/');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "user_id": userId,
        "task_id": taskId,
        "quote_id": quoteId,
      }),
    );

    if (response.statusCode != 201) {
      throw Exception("Failed to create bookmark: ${response.body}");
    }
  }

  // Get User Bookmarks
  Future<List<Map<String, dynamic>>> getUserBookmarks(int userId) async {
    final url = Uri.parse('$baseUrl/bookmarks/$userId');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(json.decode(response.body));
    } else {
      throw Exception("Failed to load bookmarks: ${response.body}");
    }
  }

   // Bookmark a quote
Future<bool> bookmarkQuote(int userId, int? taskId, int? quoteId) async {
  final url = Uri.parse('$baseUrl/bookmarks/');
  try {
    final body = jsonEncode({
      'user_id': userId,
      'task_id': taskId,
      'quote_id': quoteId,
    });

    print('Request Body: $body'); // Debugging

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    if (response.statusCode == 201) {
      print('Bookmark created successfully.');
      return true;
    } else {
      print('Failed to bookmark. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      return false;
    }
  } catch (e) {
    print('Error while bookmarking: $e');
    return false;
  }
}



  // Delete Bookmark
  Future<void> deleteBookmark(int bookmarkId) async {
    final url = Uri.parse('$baseUrl/bookmarks/$bookmarkId');
    final response = await http.delete(url);

    if (response.statusCode != 204) {
      throw Exception("Failed to delete bookmark: ${response.body}");
    }
  }


  // Logout User
  Future<void> logoutUser() async {
    await storage.delete(key: 'authToken');
    await storage.delete(key: 'userId');
  }
}
