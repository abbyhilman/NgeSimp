import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({Key? key}) : super(key: key);

  Widget build(context, CalendarController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calendar",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 1.2,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: controller.categories.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.categories[index];
                  return InkWell(
                    onTap: () {
                      if (item['id'] == 1) {
                        Get.to(const BirthdayView());
                      } else {
                        Get.to(const DebutView());
                      }
                    },
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        height: 160.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(item['image'] ??
                                    const AssetImage("assets/image/byhil.png")),
                                fit: BoxFit.contain)),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    item['category_name'],
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CalendarView> createState() => CalendarController();
}
