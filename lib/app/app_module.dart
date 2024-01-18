import 'package:flutter_modular/flutter_modular.dart';

import '../config/client.dart';

class AppModule extends Module {

  @override
  void binds(Injector i) {
    i.addSingleton(Client.new);
  }

  @override
  void routes(RouteManager r) {
    //r.module('/', module: AccessControlModule());
  }
}