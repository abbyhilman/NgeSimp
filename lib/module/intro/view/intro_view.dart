import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  Widget build(context, IntroController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: primaryColor,
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: yellowWhite,
          iconColor: primaryColor,
          prefixIconColor: primaryColor,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SafeArea(
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            const SizedBox(height: 16.0 * 2),
                            Image.asset(
                              "assets/image/welcome.gif",
                              height: 300.0,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 16.0 * 2),
                          ],
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Expanded(
                              flex: 8,
                              child: Column(
                                children: [
                                  Hero(
                                      tag: "start_btn",
                                      child: QButton(
                                        label: "Let's Go",
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            elevation: 0),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MainNavigationView()),
                                          );
                                        },
                                      )),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IntroView> createState() => IntroController();
}
