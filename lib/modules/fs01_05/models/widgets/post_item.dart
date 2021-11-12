import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  const PostItem({Key? key, required this.height, required this.url})
      : super(key: key);

  final double height;
  final String url;

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  late double _height;
  late String _url;

  @override
  void initState() {
    _height = widget.height;
    _url = widget.url;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: _height,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF242A37),
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 4, offset: Offset(3, 6))
          ]),
      child: Column(
        children: [
          //infor Widget
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Expanded(
            child: CachedNetworkImage(
              width: double.infinity,
              imageUrl: _url,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ],
      ),
    );
  }
}