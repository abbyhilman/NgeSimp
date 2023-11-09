import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            if (MediaQuery.of(context).viewInsets.bottom == 0.0)
              Image.asset(
                "assets/icon/logo_aja.png",
                width: 150.0,
                height: 150.0,
                fit: BoxFit.fill,
              ),
            const SizedBox(
              height: 40.0,
            ),
            QFormText(
              label: 'Full Name',
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 12.0,
            ),
            QFormText(
              label: 'Email',
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 12.0,
            ),
            QFormText(
              label: 'Password',
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            QButton(
              label: "Create an Account",
              onPressed: () {},
              color: Colors.white,
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  elevation: 0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
                children: <TextSpan>[
                  TextSpan(
                      text: 'By signing up, you agree to our \n',
                      style: TextStyle(color: disableIconColor)),
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                  TextSpan(
                      text: ' and ', style: TextStyle(color: disableIconColor)),
                  TextSpan(
                    text: 'Privacy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () => Get.offAll(const MainNavigationView()),
              child: Text(
                "I have an account",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
