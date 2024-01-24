import 'package:flutter/material.dart';
import 'package:interneepk/utils/responsive.dart';
import '../../../../common/components/background_widget.dart';
import 'components/mobile_welcome_widget.dart';
import 'components/desktop_welcome_widget.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Responsive(
                mobile: MobileWelcomeWidget(),
                desktop: DesktopWelcomeWidget()
            ),
          ),
        )
    );
  }
}



