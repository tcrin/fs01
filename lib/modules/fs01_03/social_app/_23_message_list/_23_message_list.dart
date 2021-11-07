import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fs01/modules/fs01_02/components_page/message.dart';
import 'package:fs01/modules/fs01_02/components_page/user_active.dart';
import 'package:fs01/themes/app_assets.dart';
import 'package:fs01/themes/app_colors.dart';
import 'package:fs01/themes/app_styles.dart';

const assetKey = 'assets/data/user_message_data.json';
const assetKey2 = 'assets/data/user_active_data.json';

class MessageListPage extends StatefulWidget {
  const MessageListPage({Key? key}) : super(key: key);

  @override
  _MessageListPageState createState() => _MessageListPageState();
}

class _MessageListPageState extends State<MessageListPage> {
  List itemMessage = List.empty(growable: true);
  List itemActive = List.empty(growable: true);
  List<Widget> listMessageWidget = List.empty(growable: true);
  List<Widget> listActiveWidget = List.empty(growable: true);

  Future<void> readJsonMessage() async {
    final json = await rootBundle.loadString(assetKey);
    final map = jsonDecode(json);
    itemMessage.addAll(map["results"]);
  }

  Future<void> readJsonActive() async {
    final json = await rootBundle.loadString(assetKey2);
    final map = jsonDecode(json);
    itemActive.addAll(map["results"]);
  }

  List<Widget> messageWidget() {
    for (int i = 0; i < itemMessage.length; i++) {
      listMessageWidget.add(Message(
        avatar: itemMessage[i]['user']['picture']['medium'],
        unReadCount: itemMessage[i]['unread_count'],
        nameUser: itemMessage[i]['user']['name'],
        content: itemMessage[i]['text'],
      ));
    }
    return listMessageWidget;
  }

  List<Widget> activeWidget() {
    for (int i = 0; i < itemActive.length; i++) {
      List<String> name = (itemActive[i]['name'])!.split(' ');
      listActiveWidget.add(UserActive(
        nameUser: name.first,
        avatar: itemActive[i]['picture']['large'],
        status: itemActive[i]['status'],
      ));
    }
    return listActiveWidget;
  }

  int selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      readJsonMessage();
      readJsonActive();
    });
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.primaryColor,
            title: Text(
              'Message',
              style: AppStyle.h0
                  .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ],
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColor.primaryColor,
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.black38,
                  ),
                ),
              ),
              height: 115,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activeWidget().length,
                itemBuilder: (_, index) {

                  return activeWidget()[index];
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) => messageWidget()[index],
              childCount: messageWidget().length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColor.iconColor,
        unselectedItemColor: AppColor.timeColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.home,
              width: 28,
              height: 28,
              color: selectedIndex == 0 ? AppColor.iconColor : null,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.streams,
              width: 28,
              height: 28,
              color: selectedIndex == 1 ? AppColor.iconColor : null,
            ),
            label: 'Streams',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.messages,
              width: 28,
              height: 28,
              color: selectedIndex == 2 ? AppColor.iconColor : null,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.notifications,
              width: 28,
              height: 28,
              color: selectedIndex == 3 ? AppColor.iconColor : null,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAsset.profiles,
              width: 28,
              height: 28,
              color: selectedIndex == 4 ? AppColor.iconColor : null,
            ),
            label: 'Profiles',
          ),
        ],
      ),
    );
  }
}
