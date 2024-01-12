// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:viha_tech/presentation/screens/main_registration/main_registration_imports.dart'
    as _i1;
import 'package:viha_tech/presentation/screens/otp/otp_import.dart' as _i2;
import 'package:viha_tech/presentation/screens/register/register_imports.dart'
    as _i3;
import 'package:viha_tech/presentation/screens/splash/splash_imports.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRegistrationRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainRegistration(),
      );
    },
    OtpScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OtpScreenRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.OtpScreen(
          key: args.key,
          mobilenumber: args.mobilenumber,
        ),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Splash(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainRegistration]
class MainRegistrationRoute extends _i5.PageRouteInfo<void> {
  const MainRegistrationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRegistrationRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OtpScreen]
class OtpScreenRoute extends _i5.PageRouteInfo<OtpScreenRouteArgs> {
  OtpScreenRoute({
    _i6.Key? key,
    required String mobilenumber,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          OtpScreenRoute.name,
          args: OtpScreenRouteArgs(
            key: key,
            mobilenumber: mobilenumber,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpScreenRoute';

  static const _i5.PageInfo<OtpScreenRouteArgs> page =
      _i5.PageInfo<OtpScreenRouteArgs>(name);
}

class OtpScreenRouteArgs {
  const OtpScreenRouteArgs({
    this.key,
    required this.mobilenumber,
  });

  final _i6.Key? key;

  final String mobilenumber;

  @override
  String toString() {
    return 'OtpScreenRouteArgs{key: $key, mobilenumber: $mobilenumber}';
  }
}

/// generated route for
/// [_i3.RegisterScreen]
class RegisterScreenRoute extends _i5.PageRouteInfo<void> {
  const RegisterScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RegisterScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterScreenRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Splash]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
