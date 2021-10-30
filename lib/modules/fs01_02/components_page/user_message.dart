import 'package:flutter/material.dart';
import 'package:fs01/themes/app_styles.dart';
import 'package:fs01/common/widgets/stateless/avatar/circle_avatar.dart';
import 'package:fs01/common/widgets/stateless/status/status_message.dart';

class UserMessage extends StatelessWidget {
  final int? newMessage;
  final String? avatar;

  const UserMessage({Key? key, this.newMessage, this.avatar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double radiusAvt = (size.width + size.height) * 0.026;
    final double sizeStatus = (size.width + size.height) * 0.016;
    final double widthBorder = (size.width + size.height) * 0.0009;
    final double fontSize = (size.height) * 0.017;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: (newMessage == null || newMessage == 0)
              ? CircleAvt(
                  avatar: avatar,
                  radius: radiusAvt.roundToDouble(),
                )
              : Stack(
                  children: [
                    CircleAvt(
                      radius: radiusAvt.roundToDouble(),
                      avatar: avatar,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: StatusMessage(
                        size: sizeStatus.roundToDouble(),
                        count: newMessage!,
                        widthBorder: widthBorder.roundToDouble(),
                        textStyle: AppStyle.h3.copyWith(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          fontSize: fontSize.roundToDouble(),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
