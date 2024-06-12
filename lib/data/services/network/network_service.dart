import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kanban_app/data/services/network/end_points.dart';

class NetworkService {
  final Dio _dio = Dio();
  final String baseUrl = EndPoints.baseUrl;
  String? token;
  String? boardId;

  Future<void> loadEnv() async {
    await dotenv.load(fileName: ".env");
    token = dotenv.env['BOARD_TOKEN']!;
    boardId = dotenv.env['BOARD_ID']!;
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  Future<Response> getRequest(String endpoint) async {
    log("'$baseUrl/$endpoint'");
    try {
      final response = await _dio.get('$baseUrl/$endpoint');

      return response;
    } catch (e) {
      throw Exception('Failed to GET data: $e');
    }
  }

  Future<Response> postRequest(String endpoint, dynamic data) async {
    log("end point" + endpoint);
    try {
      final response = await _dio.post('$baseUrl/$endpoint', data: data);
      return response;
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to POST data: $e');
    }
  }

  Future<Response> putRequest(String endpoint, dynamic data) async {
    try {
      final response = await _dio.put('$baseUrl/$endpoint', data: data);
      return response;
    } catch (e) {
      throw Exception('Failed to PUT data: $e');
    }
  }

  Future<Response> deleteRequest(String endpoint) async {
    try {
      final response = await _dio.delete('$baseUrl/$endpoint');
      return response;
    } catch (e) {
      throw Exception('Failed to DELETE data: $e');
    }
  }
}
