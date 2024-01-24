import 'package:flutter/material.dart';
import 'package:interneepk/common/components/background_widget.dart';
import 'package:interneepk/utils/responsive.dart';
import 'components/desktop_login_widget.dart';
import 'components/mobile_login_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: SingleChildScrollView(
          child: Responsive(
              mobile: MobileLoginWidget(),
            desktop: DesktopLoginWidget(),
          ),
        )
    );
  }
}




