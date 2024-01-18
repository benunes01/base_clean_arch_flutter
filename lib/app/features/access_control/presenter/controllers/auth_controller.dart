import 'package:mobx/mobx.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/usecases/auth_usecase.dart';
import '../../infra/models/auth/auth_request.dart';
import '../../infra/models/auth/auth_response.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthController with _$AuthController;

abstract class _AuthController with Store {
  final AuthUseCase authUseCase;

  _AuthController(this.authUseCase);

  @observable
  bool isLoading = false;

  @action
  Future<AuthResponse?> auth(AuthRequest authRequest) async {
    isLoading = true;

    AuthResponse? authResponse;
    try {
      await authUseCase.auth(authRequest).onSuccess((AuthResponse success) {
        authResponse = success;
      });
    } finally {
      isLoading = false;
    }
    return authResponse;
  }
}