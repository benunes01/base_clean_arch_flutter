// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthController on _AuthController, Store {
  late final _$isLoadingAtom =
      Atom(name: '_AuthController.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$authAsyncAction =
      AsyncAction('_AuthController.auth', context: context);

  @override
  Future<AuthResponse?> auth(AuthRequest authRequest) {
    return _$authAsyncAction.run(() => super.auth(authRequest));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
