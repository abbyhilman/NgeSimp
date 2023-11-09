import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../controller/logout_controller.dart';

class LogoutView extends StatefulWidget {
  const LogoutView({Key? key}) : super(key: key);

  Widget build(context, LogoutController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Logout"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<LogoutView> createState() => LogoutController();
}
