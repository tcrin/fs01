import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImagesPost extends StatelessWidget {
  final String? url;

  const ImagesPost({
    Key? key,
    this.url='',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: url!,
        width: double.infinity,
        errorWidget: (context, url, error) => Container(
              color: Colors.black,
            ));
  }
}
