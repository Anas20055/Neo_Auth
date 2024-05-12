import 'package:app_auth/app/domain/app_buider.dart';
import 'package:app_auth/app/domain/app_runner.dart';
import 'package:app_auth/core/di/init_di.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class MainAppRunner implements AppRunner {
  final String env;

  MainAppRunner(this.env);
  @override
  Future<void> preloadData() async {
    initDi(env);
  }

  @override
  Future<void> run(AppBuider builder) async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );
    await preloadData();
    runApp(builder.buidApp());
  }
}
