import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../controller/vtuber_detail_controller.dart';

class VtuberDetailView extends StatefulWidget {
  final Map item;
  const VtuberDetailView({Key? key, required this.item}) : super(key: key);

  Widget build(context, VtuberDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Vtuber Detail"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<VtuberDetailView> createState() => VtuberDetailController();
}
