import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_05/widgets/stateless/post_owner_cpn.dart';
import 'package:fs01/themes/app_assets.dart';
import 'package:fs01/themes/app_colors.dart';
import 'package:fs01/themes/app_styles.dart';

import 'images_post.dart';

class Post extends StatelessWidget {
  final double height;
  final String? url;
  final String? name;
  final String? time;
  final String? tag;
  final String? content;
  final String? countLove;
  final String? countComment;

  const Post({
    Key? key,
    required this.height,
    this.url = '',
    this.name = 'Macus',
    this.time = '2 hours ago',
    this.tag = '#relax #travel',
    this.content = 'Airport Hotels The RAirport Hotels The R',
    this.countLove = '1124',
    this.countComment = '345',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: height,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostOwner(
              url: url!,
              name: name!,
              time: time!,
            ),
            const SizedBox(
              height: 18,
            ),
            Text(tag!,
              style: AppStyle.tag,
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              content!,
              style: AppStyle.h4,
            ),
            const SizedBox(
              height: 13,
            ),
            const Expanded(child: ImagesPost()),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 28,
              // color: Colors.yellow,
              child: Row(
                children: [
                  InkWell(
                    child: Image.asset(
                      AppAsset.love,
                    ),
                  ),
                  Text(
                    countLove!,
                    style: AppStyle.h4,
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  InkWell(
                    child: Image.asset(
                      AppAsset.comment,
                    ),
                  ),
                  Text(
                    countComment!,
                    style: AppStyle.h4,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
