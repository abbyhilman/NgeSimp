import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const QFormText(label: "Email"),
              const SizedBox(
                height: 12.0,
              ),
              const QFormText(label: "Password"),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                  label: "Change Passowrd",
                  onPressed: () {},
                  color: Colors.white,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      elevation: 0))
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
