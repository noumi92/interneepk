import 'package:flutter/material.dart';
import 'package:interneepk/common/components/background_widget.dart';
import 'package:interneepk/utils/responsive.dart';
import 'components/desktop_register_widget.dart';
import 'components/mobile_register_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: SingleChildScrollView(
          child: Responsive(
              mobile: MobileRegisterWidget(),
            desktop: DesktopRegisterWidget(),
          ),
        )
    );
  }
}
