import 'package:flutter_modular/flutter_modular.dart';

import '../../../config/client.dart';
import 'domain/repositories/i_access_control_repository.dart';
import 'domain/usecases/auth_usecase.dart';
import 'external/access_control_service.dart';
import 'infra/repositories/access_control_repository.dart';
import 'presenter/controllers/auth_controller.dart';

class AccessControlModule extends Module {

  @override
  void binds(Injector i) {
    i.add(AccessControlService.new);
    i.add<AccessControlRepository>(AccessControlRepositoryImp.new);
    i.add(AuthUseCase.new);
    i.addSingleton(AuthController.new);

    i.addSingleton(Client.new);
  }

  @override
  void routes(RouteManager r) {
    //r.child('/', child: (BuildContext context) => StartPage());
  }
}