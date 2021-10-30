import 'package:flutter/material.dart';
import 'package:fs01/themes/app_styles.dart';
import 'package:fs01/common/widgets/stateless/avatar/circle_avatar.dart';
import 'package:fs01/common/widgets/stateless/text/name_user.dart';
import 'package:fs01/common/widgets/stateless/status/status_active.dart';

class UserActive extends StatelessWidget {
  final String? nameUser;
  final String? avatar;
  final String? status;

  const UserActive({Key? key, this.nameUser, this.avatar, this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double radiusAvt = (size.width + size.height) * 0.026;
    final double sizeStatus = (size.width + size.height) * 0.01;
    final double widthBorder = (size.width + size.height) * 0.0015;
    final double fontSize = (size.height) * 0.015;
    final double horizontal = size.width * 0.036;

    return Container(
      child: (status == null || status == 'offline')
          ? null
          : Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: horizontal.roundToDouble(),
                  top: horizontal.roundToDouble(),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvt(
                          avatar: avatar,
                          radius: radiusAvt.roundToDouble(),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 5,
                          child: StatusActive(
                            size: sizeStatus.roundToDouble(),
                            widthBorder: widthBorder.roundToDouble(),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: NameUser(
                        name: nameUser!,
                        textStyle: AppStyle.h4.copyWith(
                          fontSize: fontSize.roundToDouble(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
