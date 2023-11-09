import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  Widget build(context, EditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 64.0,
                backgroundImage:
                    const AssetImage('assets/image/profile_dummy.png'),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 16.0,
                        backgroundColor: primaryColor,
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const QFormText(label: "Full name"),
              const SizedBox(
                height: 12.0,
              ),
              const QFormText(label: "Email"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: QButton(
            label: "Update",
            onPressed: () {},
            color: Colors.white,
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                elevation: 0)),
      ),
    );
  }

  @override
  State<EditProfileView> createState() => EditProfileController();
}
