import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vtuber_list/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome\nto NgeSimp",
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Malas",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icon/logo_aja.png",
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const Spacer(),
              const QFormText(
                label: "Email",
              ),
              const SizedBox(
                height: 12.0,
              ),
              const QFormText(
                label: "Password",
                suffixIcon: Icons.visibility,
              ),
              const SizedBox(
                height: 20.0,
              ),
              QButton(
                label: "Login",
                onPressed: () => Get.to(const ProfileView()),
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
              InkWell(
                onTap: () => Get.to(const ForgotPassowrdView()),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
              ),
              const Spacer(),
              QButton(
                label: "Sign Up",
                disabled: true,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterView()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
