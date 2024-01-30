import 'package:flutter/material.dart';
import 'package:interneepk/common/components/background_widget.dart';
import 'package:interneepk/features/auth/viewmodels/login_view_model.dart';
import 'package:interneepk/utils/responsive.dart';
import 'components/desktop_login_widget.dart';
import 'components/mobile_login_widget.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final loginVM = Get.put(LoginViewModel);
  final _formKey = GlobalKey<FormState>();
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: Responsive(
            mobile: MobileLoginWidget(),
          desktop: DesktopLoginWidget(),
        )
    );
  }
}




