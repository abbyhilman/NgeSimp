import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import 'package:vtuber_list/core/theme/theme.dart';
import 'package:vtuber_list/state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: getMainTheme(),
      debugShowCheckedModeBanner: false,
      // home: const SplashView(),
      home: kDebugMode ? const IntroView() : const SplashView(),
    );
  }
}
