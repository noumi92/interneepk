import 'package:flutter/material.dart';
import 'package:interneepk/utils/constants/sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Welcome to Internee.pk", style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: NSizes.defaultPadding * 2,),
        Row(
          children: [
            const Spacer(),
            Expanded(
                flex: 8,
                child: SvgPicture.asset("assets/icons/chat.svg")
            ),
            const Spacer()
          ],
        ),
        const SizedBox(height: NSizes.defaultPadding * 2,)
      ],
    );
  }
}
