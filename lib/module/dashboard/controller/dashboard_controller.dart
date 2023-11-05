import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> vtuberlist = [
    {
      "id": 1,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/02/minerva-rosaline-portrait-66.jpg",
      "vtuber_name": "Minerva Rosaline",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": false,
    },
    {
      "id": 2,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/06/callista-bella-portrait-66.jpg",
      "vtuber_name": "Callista Bella",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
    {
      "id": 3,
      "photo":
          "https://hololist.net/wp-content/uploads/2023/08/pia-meraleo-portrait-66.jpg",
      "vtuber_name": "Pia Meraleo",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
    {
      "id": 4,
      "photo":
          "https://pbs.twimg.com/media/F3slc5zbwAAbfub?format=jpg&name=medium",
      "vtuber_name": "Ditanyaan Ch",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
    {
      "id": 5,
      "photo": "https://hololist.net/wp-content/uploads/2022/03/nanarika-1.jpg",
      "vtuber_name": "NanaRika",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
    {
      "id": 6,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/03/kobo-kanaeru-portrait-66.jpg",
      "vtuber_name": "Kobo Kanaeru",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
    {
      "id": 7,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/06/mozaru-portrait-mz66.jpg",
      "vtuber_name": "Mozaru",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
    {
      "id": 8,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/11/kj-blosch-portrait-66.jpg",
      "vtuber_name": "KJ Juniper Blosch",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
    {
      "id": 9,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/07/reina-keina-portrait-66.jpg",
      "vtuber_name": "Reina Keina",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
    {
      "id": 10,
      "photo":
          "https://hololist.net/wp-content/uploads/2023/01/gabriel-abyssia-portrait-66.jpg",
      "vtuber_name": "Gabriel Abyssia",
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": true,
    },
  ];
}
