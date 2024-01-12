import 'package:flutter/material.dart';
import 'package:viha_tech/core/theme/app_themes.dart';
import 'package:viha_tech/data/repositories/register_repo.dart';
import 'data/repositories/repositories.dart';
import 'presentation/routes/router_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => Repository(
      registerRepo: RegisterRepo(),
    ),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            routerConfig: _appRouter.config(),
          );
        });
  }
}
