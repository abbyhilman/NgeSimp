import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../controller/faq_controller.dart';

class FaqView extends StatefulWidget {
  const FaqView({Key? key}) : super(key: key);

  Widget build(context, FaqController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Faq"),
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
  State<FaqView> createState() => FaqController();
}
