import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../scale3c_app.dart';

Future<void> mainCommon({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  _setupDI(flavor);

  runApp(const Scale3cApp());
}

void _setupDI(Flavor flavor) {
  getIt.allowReassignment = true;
  getIt.registerSingleton(flavor);
  getIt.pushNewScope(
    scopeName: unauthScope,
    init: (_) {
      DataDI.setupUnauthZoneDependencies();
      NavigationDI.setupDependencies();
    },
  );
}
