import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../controller/favorite_vtuber_controller.dart';

class FavoriteVtuberView extends StatefulWidget {
  const FavoriteVtuberView({Key? key}) : super(key: key);

  Widget build(context, FavoriteVtuberController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FavoriteVtuber"),
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
  State<FavoriteVtuberView> createState() => FavoriteVtuberController();
}
