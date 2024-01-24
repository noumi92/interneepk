import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interneepk/utils/constants/images.dart';
import 'package:interneepk/utils/constants/sizes.dart';

class RegisterImageWidget extends StatelessWidget {
  const RegisterImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("REGISTER"),
        const SizedBox(height: NSizes.defaultPadding,),
        Row(children: [
          const Spacer(),
          Expanded(
            flex: 8,
              child: SvgPicture.asset(NImages.registerSvg)
          ),
          const Spacer()
        ],),
        const SizedBox(height: NSizes.defaultPadding,)
      ],
    );
  }
}
