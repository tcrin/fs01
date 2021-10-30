import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_02/components_page/user_active.dart';
import 'package:fs01/modules/fs01_02/components_page/user_message.dart';
import 'package:fs01/common/widgets/stateless/button/app_button.dart';

import 'all_component.dart';
import 'message.dart';

class ManageComponent extends StatelessWidget {
  const ManageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Manage component'),
      ),
      body: ListView(
        children: [
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const AllComponent(),
                ),
              );
            },
            label: '1. All component',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const UserActive(),
                ),
              );
            },
            label: '2. User active',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const UserMessage(),
                ),
              );
            },
            label: '3. User message',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const Message(),
                ),
              );
            },
            label: '4. Message',
          ),
        ],
      ),
    );
  }
}
