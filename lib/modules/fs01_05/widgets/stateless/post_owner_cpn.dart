import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_05/widgets/stateless/avatar.dart';
import 'package:fs01/modules/fs01_05/widgets/stateless/right_item_row.dart';

class PostOwner extends StatelessWidget {
  final String? url;
  final String? name;
  final String? time;

  const PostOwner({Key? key, this.url = '', this.name = '', this.time = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar(
          url: url!,
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RightItemRow(
                name: name!,
                time: time!,
              ),
            ],
          ),
        )
      ],
    );
  }
}
