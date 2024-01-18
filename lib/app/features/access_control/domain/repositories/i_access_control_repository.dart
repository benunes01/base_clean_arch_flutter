import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../infra/models/auth/auth_request.dart';
import '../../infra/models/auth/auth_response.dart';

abstract class AccessControlRepository {
  AsyncResult<AuthResponse, DioException> auth(AuthRequest authRequest);
}