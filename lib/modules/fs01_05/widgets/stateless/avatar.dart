import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Avatar extends StatelessWidget {
  final String? url;
  final double radius;

  const Avatar({Key? key, this.url = '', this.radius = 25.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: url!,
        // placeholder: (context, url) => const CircularProgressIndicator(),
        imageBuilder: (context, imageProvider) => CircleAvatar(
          radius: radius,
          backgroundImage: imageProvider,
        ),
        errorWidget: (context, url, error) => CircleAvatar(
          radius: radius,
          backgroundColor: Colors.blueGrey,
          child: const Icon(
            Icons.error_outline,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
