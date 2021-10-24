import 'package:flutter/material.dart';
import 'package:fs01/widgets/status_Active.dart';

class StatusActivePage extends StatelessWidget {
  const StatusActivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Status Active'),
      ),
      body: const Center(
        child: StatusActive(),
      ),
    );
  }
}
