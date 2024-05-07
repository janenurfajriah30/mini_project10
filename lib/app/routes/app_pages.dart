import 'package:get/get.dart';

import 'package:mini_project_10/app/modules/create/bindings/create_binding.dart';
import 'package:mini_project_10/app/modules/create/views/create_view.dart';
import 'package:mini_project_10/app/modules/home/bindings/home_binding.dart';
import 'package:mini_project_10/app/modules/home/views/home_view.dart';
import 'package:mini_project_10/app/modules/login/bindings/login_binding.dart';
import 'package:mini_project_10/app/modules/login/views/login_view.dart';
import 'package:mini_project_10/app/modules/register/bindings/register_binding.dart';
import 'package:mini_project_10/app/modules/register/views/register_view.dart';
import 'package:mini_project_10/app/modules/reset_password/bindings/reset_password_binding.dart';
import 'package:mini_project_10/app/modules/reset_password/views/reset_password_view.dart';
import 'package:mini_project_10/app/modules/splash/bindings/splash_binding.dart';
import 'package:mini_project_10/app/modules/splash/views/splash_view.dart';
import 'package:mini_project_10/app/modules/update/bindings/update_binding.dart';
import 'package:mini_project_10/app/modules/update/views/update_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.CREATE,
      page: () => CreateView(),
      binding: CreateBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE,
      page: () => UpdateView(),
      binding: UpdateBinding(),
    ),
  ];
}
