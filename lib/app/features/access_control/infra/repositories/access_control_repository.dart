import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/repositories/i_access_control_repository.dart';
import '../../external/access_control_service.dart';
import '../models/auth/auth_request.dart';
import '../models/auth/auth_response.dart';

class AccessControlRepositoryImp extends AccessControlRepository {
  final AccessControlService accessControlService;

  AccessControlRepositoryImp({required this.accessControlService});

  @override
  AsyncResult<AuthResponse, DioException> auth(AuthRequest authRequest) async {
    try {
      AuthResponse response = await accessControlService.auth(authRequest);
      return Success(response);
    } catch (e) {
      rethrow;
    }
  }
}