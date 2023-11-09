// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import 'package:vtuber_list/module/dashboard/widget/fade_animation.dart';

class VtuberView extends StatelessWidget {
  final DashboardController controller;
  const VtuberView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.0 / 1.1,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: controller.searchListVtuber.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var item = controller.searchListVtuber[index];
        return FadeAnimation((1.0 + index) / 4, listComponent(item));
      },
    );
  }

  listComponent(item) {
    return InkWell(
      onTap: () => Get.to(VtuberDetailView(
        item: item,
      )),
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 160.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(item['photo'] ??
                        const AssetImage("assets/image/byhil.png"))),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 10,
                    top: 10,
                    child: CircleAvatar(
                      radius: 16.0,
                      backgroundColor: Colors.grey[200],
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            item['vtuber_name'] ?? "ByHil",
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
