import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import 'package:vtuber_list/core/theme/theme_config.dart';
import 'package:vtuber_list/core/widget/button/button.dart';
import 'package:vtuber_list/core/widget/formText/formText.dart';
import '../controller/forgot_passowrd_controller.dart';

class ForgotPassowrdView extends StatefulWidget {
  const ForgotPassowrdView({Key? key}) : super(key: key);

  Widget build(context, ForgotPassowrdController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ForgotPassowrd"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            QFormText(
              label: "Email",
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 12.0,
            ),
            QButton(
              label: "Forgot Password",
              color: Colors.white,
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  elevation: 0),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<ForgotPassowrdView> createState() => ForgotPassowrdController();
}
