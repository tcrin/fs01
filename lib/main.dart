import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_05/blocs/notification_bloc_observer.dart';
import 'package:fs01/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  Bloc.observer = NotificationBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FS01',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}
