import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_02/components_page/avatar_message_component.dart';
import 'package:fs01/values/app_colors.dart';

class MessageComponent extends StatelessWidget {
  const MessageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
      ),
      body: Container(
        height: size.height * 0.12,
        color: AppColor.primaryColor,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.width * 0.02,
                    horizontal: size.height * 0.01),
                child: const AvatarMessage(),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                decoration: const BoxDecoration(
                  // color: Colors.white,
                  border: Border(
                    bottom: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: size.width * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(
                            flex: 12,
                            child: Text(
                              'Herman Pope',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColor.textColor,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              '12:54 PM',
                              style: TextStyle(
                                color: AppColor.timeColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'What kind of music do you like ?',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColor.textColor,
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
