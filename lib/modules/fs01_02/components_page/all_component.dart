import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_02/components_page/message.dart';
import 'package:fs01/modules/fs01_02/components_page/user_active.dart';
import 'package:fs01/modules/fs01_02/components_page/user_message.dart';
import 'package:fs01/themes/app_colors.dart';

class AllComponent extends StatelessWidget {
  const AllComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('All Component'),
        ),
        body: Container(
          color: AppColor.primaryColor,
          child: ListView(
            children: const [
              SizedBox(
                height: 10,
              ),
              UserActive(
                nameUser: 'Rin',
                status: 'aaa',
                avatar: 'https://randomuser.me/api/portraits/med/men/48.jpg',
              ),
              SizedBox(
                height: 10,
              ),
              UserMessage(
                newMessage: 3,
                avatar: 'https://randomuser.me/api/portraits/med/men/48.jpg',
              ),
              SizedBox(
                height: 10,
              ),
              Message(
                avatar: 'https://randomuser.me/api/portraits/med/men/48.jpg',
                content: 'ABC',
                nameUser: 'Tran Cong Rin',
                unReadCount: 4,
              ),
              SizedBox(
                height: 10,
              ),
              Message(
                avatar: 'https://randomuser.me/api/portraits/med/men/48.jpg',
                content: 'ABC',
                nameUser: 'Tran Cong Rin',
                unReadCount: 0,
              ),
            ],
          ),
        ));
  }
}
