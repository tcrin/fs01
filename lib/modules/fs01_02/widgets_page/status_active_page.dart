import 'package:flutter/material.dart';
import 'package:fs01/widgets/status_Active.dart';

class StatusActivePage extends StatelessWidget {
  const StatusActivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        StatusActive(),
      ],
    );
  }
}
