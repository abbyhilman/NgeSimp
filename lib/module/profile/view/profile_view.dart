import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 64,
                backgroundImage: AssetImage("assets/image/profile_dummy.png"),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                "ByHil",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              for (var item in controller.menuItems)
                ListTile(
                  title: Text(item['label']),
                  trailing: const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                  onTap: () => Get.to(item['view']),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
