import 'package:http/http.dart' as http;

class AuthService {
  static const String _baseUrl = 'http://localhost:3000/api/auth';

  static Future<http.Response> login(String email, String password) {
    return http.post(
      Uri.parse('$_baseUrl/login'),
      body: {
        'email': email,
        'password': password,
      },
    );
  }

  static Future<http.Response> signup(
      String firstName, String lastName, String email, String password) {
    return http.post(
      Uri.parse('$_baseUrl/signup'),
      body: {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'password': password,
      },
    );
  }

  static Future<http.Response> forgotPassword(String email) {
    return http.post(
      Uri.parse('$_baseUrl/forgot-password'),
      body: {
        'email': email,
      },
    );
  }

  static Future<http.Response> resetPassword(
      String email, String verificationCode, String newPassword) {
    return http.post(
      Uri.parse('$_baseUrl/reset-password'),
      body: {
        'email': email,
        'verificationCode': verificationCode,
        'newPassword': newPassword,
      },
    );
  }

  static Future<http.Response> getProfile() {
    return http.get(Uri.parse('$_baseUrl/profile'));
  }

  static Future<http.Response> updateProfile(String userId, Map<String, String> updatedData) {
    return http.post(
      Uri.parse('$_baseUrl/updateProfile/$userId'),
      body: updatedData,
    );
  }
}
