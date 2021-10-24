import 'package:flutter/material.dart';
import 'package:fs01/values/app_assets.dart';



class CircleAvt extends StatelessWidget {
  final double sizeAvt;
  final String avatar;

  const CircleAvt({Key? key,this.sizeAvt=60.0, this.avatar=AppAsset.avatar_1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeAvt,
      height: sizeAvt,
      child: CircleAvatar(
        backgroundImage: AssetImage(avatar),
      ),
    );
  }
}
