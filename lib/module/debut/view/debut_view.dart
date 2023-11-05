import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../controller/debut_controller.dart';

class DebutView extends StatefulWidget {
  const DebutView({Key? key}) : super(key: key);

  Widget build(context, DebutController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Debut"),
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
  State<DebutView> createState() => DebutController();
}
