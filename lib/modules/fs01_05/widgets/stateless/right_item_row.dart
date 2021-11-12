import 'package:flutter/material.dart';
import 'package:fs01/themes/app_assets.dart';
import 'package:fs01/themes/app_styles.dart';

class RightItemRow extends StatelessWidget {
  final String? name;
  final String? time;

  const RightItemRow({Key? key, this.name = '', this.time = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name!,
                style: AppStyle.h3.copyWith(fontWeight: FontWeight.bold)),
            InkWell(
              child: Image.asset(
                AppAsset.setting,
              ),
            ),
          ],
        ),
        Text(
          time!,
          style: AppStyle.time,
        ),
      ],
    );
  }
}
