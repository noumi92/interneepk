import 'package:get/get_navigation/get_navigation.dart';
import 'package:interneepk/common/routes/routes_names.dart';
import 'package:interneepk/features/auth/views/login/login_view.dart';
import 'package:interneepk/features/auth/views/register/register_view.dart';
import 'package:interneepk/features/auth/views/splash/splash_view.dart';
import 'package:interneepk/features/auth/views/welcome/welcome_view.dart';
import 'package:interneepk/features/home/views/home_view.dart';

class RoutesHandler{
  static routesHandler () => [
    GetPage(name: RoutesNames.splashView, page: () => SplashView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesNames.welcomeView, page: () => const WelcomeView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesNames.loginView, page: () => LoginView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesNames.registerView, page: () => const RegisterView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesNames.homeView, page: () => HomeView(), transition: Transition.rightToLeft),
  ];
}