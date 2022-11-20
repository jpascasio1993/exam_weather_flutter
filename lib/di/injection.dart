import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

@injectableInit
GetIt initInjection(GetIt getIt, {required String environment}) => $initGetIt(getIt, environment: environment);