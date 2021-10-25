import 'package:flutter/material.dart';
import 'package:fs01/widgets/status_message.dart';

class StatusMessagePage extends StatelessWidget {
  const StatusMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        StatusMessage(
          count: 3,
        ),
      ],
    );
  }
}
