import 'package:flutter/material.dart';
import 'package:interneepk/utils/constants/images.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({
    super.key,
    required this.child,
    this.topImage = NImages.welcomeTopImage,
    this.bottomImage = NImages.welcomeBottomImage,
  });
  final String topImage, bottomImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(topImage, width: 120,)
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(bottomImage, width: 120,)
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
