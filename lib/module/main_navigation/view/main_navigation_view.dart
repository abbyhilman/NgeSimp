import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    /*
    TODO: Implement this @ controller
   
    */
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: const [DashboardView(), CalendarView(), ProfileView()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          fixedColor: primaryColor,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/image/calender_takujou.png")),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/image/profile_dummy.png")),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
