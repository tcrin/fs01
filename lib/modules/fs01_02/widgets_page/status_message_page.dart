import 'package:flutter/material.dart';
import 'package:fs01/widgets/status_message.dart';

class StatusMessagePage extends StatelessWidget {
  const StatusMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Status Message'),
      ),
      body: const Center(
        child: StatusMessage(count: 5,),
      ),
    );
  }
}
