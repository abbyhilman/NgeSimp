import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';

class ProfileController extends State<ProfileView> {
  static late ProfileController instance;
  late ProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menuItems = [
    {
      "label": "Edit Profile",
      "view": const EditProfileView(),
    },
    {
      "label": "Change Password",
      "view": const ChangePasswordView(),
    },
    {
      "label": "Favorite Vtuber",
      "view": const FavoriteVtuberView(),
    },
    {
      "label": "Help",
      "view": const HelpView(),
    },
    {
      "label": "FAQ",
      "view": const FaqView(),
    },
    {
      "label": "Logout",
      "view": const LogoutView(),
    }
  ];
}
