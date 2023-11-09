import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../controller/help_controller.dart';

class HelpView extends StatefulWidget {
  const HelpView({Key? key}) : super(key: key);

  Widget build(context, HelpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Help"),
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
  State<HelpView> createState() => HelpController();
}
