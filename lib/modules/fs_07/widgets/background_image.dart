import 'package:flutter/material.dart';
import 'package:fs01/themes/app_assets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAsset.imageBackground),
              fit: BoxFit.fill)),
    );
  }
}
