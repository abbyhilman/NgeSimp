import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../controller/birthday_controller.dart';

class BirthdayView extends StatefulWidget {
  const BirthdayView({Key? key}) : super(key: key);

  Widget build(context, BirthdayController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Birthday"),
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
  State<BirthdayView> createState() => BirthdayController();
}
