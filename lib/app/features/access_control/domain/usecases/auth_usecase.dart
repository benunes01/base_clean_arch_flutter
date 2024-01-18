import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../infra/models/auth/auth_request.dart';
import '../../infra/models/auth/auth_response.dart';
import '../repositories/i_access_control_repository.dart';

class AuthUseCase {
  final AccessControlRepository _accessControlRepository;

  AuthUseCase(this._accessControlRepository);

  AsyncResult<AuthResponse, DioException> auth(AuthRequest authRequest) async {
    try {
      final result = await _accessControlRepository.auth(authRequest);
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
