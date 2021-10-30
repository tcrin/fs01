import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_02/components_page/user_message.dart';
import 'package:fs01/themes/app_colors.dart';
import 'package:fs01/themes/app_styles.dart';
import 'package:fs01/common/widgets/stateless/text/latest_message.dart';
import 'package:fs01/common/widgets/stateless/text/name_user.dart';
import 'package:fs01/common/widgets/stateless/text/time_message.dart';

class Message extends StatelessWidget {
  final String? avatar;
  final int? unReadCount;
  final String? nameUser;
  final String? content;

  const Message(
      {Key? key, this.avatar, this.unReadCount, this.nameUser, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightItem = (size.height + size.width) * 0.075;
    double horizontal = size.width * 0.036;
    double sizeName = size.height * 0.023;
    double sizeTime = size.height * 0.018;

    return Center(
      child: Container(
        height: heightItem,
        color: AppColor.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontal.roundToDouble(),
                ),
                child: UserMessage(
                  newMessage: unReadCount,
                  avatar: avatar,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: horizontal),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NameUser(
                            name: nameUser!,
                            textStyle: AppStyle.h1.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: sizeName.roundToDouble()),
                          ),
                          TimeMessage(
                            time: '09:59AM',
                            textStyle: AppStyle.time.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: sizeTime.roundToDouble()),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
                        child: LatestMessage(
                          content: content!,
                          textStyle: AppStyle.h1.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: sizeName.roundToDouble()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
