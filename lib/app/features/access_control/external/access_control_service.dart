import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../config/client.dart';
import '../infra/models/auth/auth_request.dart';
import '../infra/models/auth/auth_response.dart';

class AccessControlService {
  final Client client;

  AccessControlService({required this.client});

  Future<AuthResponse> auth(AuthRequest authRequest) async {
    try {
      final Response response = await client.dio.post('/auth', data:  jsonEncode(authRequest));
      final AuthResponse authResponse = AuthResponse.fromJson(response.data);
      return authResponse;
    }catch (e) {
      rethrow;
    }
  }
}