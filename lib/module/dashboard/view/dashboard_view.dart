import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/icon/logo_aja.png",
                      width: 64.0,
                      height: 64.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const Text(
                      "NgeSimp",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => showImagePopup(context),
                      child: Image.asset(
                        "assets/image/profile_dummy.png",
                        width: 32.0,
                        height: 32.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5.0,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: controller.searchController,
                    onChanged: (value) => controller.filterSearchResults(value),
                    decoration: InputDecoration(
                      hintText: 'Search Name',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blueGrey[900],
                      ),
                      suffixIcon: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.sort,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: VtuberView(
                    controller: controller,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to filter search results

  void showImagePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Set border radius
          ),
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  10.0), // Optional: Set border radius for the image container
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // Optional: Add a subtle shadow
                ),
              ],
            ),
            width: 200.0,
            height: 200.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "assets/image/profile_dummy.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Close",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
