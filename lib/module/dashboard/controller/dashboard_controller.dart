import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    searchListVtuber = vtuberlist;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  // Controller for the search field
  TextEditingController searchController = TextEditingController();

  List<Map<String, dynamic>> searchListVtuber = [];

  List<Map<String, dynamic>> vtuberlist = [
    {
      "id": 1,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/02/minerva-rosaline-portrait-66.jpg",
      "vtuber_name": "Minerva Rosaline",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 2,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/06/callista-bella-portrait-66.jpg",
      "vtuber_name": "Callista Bella",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 3,
      "photo":
          "https://hololist.net/wp-content/uploads/2023/08/pia-meraleo-portrait-66.jpg",
      "vtuber_name": "Pia Meraleo",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 4,
      "photo":
          "https://pbs.twimg.com/media/F3slc5zbwAAbfub?format=jpg&name=medium",
      "vtuber_name": "Ditanyaan Ch",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 5,
      "photo": "https://hololist.net/wp-content/uploads/2022/03/nanarika-1.jpg",
      "vtuber_name": "NanaRika",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 6,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/03/kobo-kanaeru-portrait-66.jpg",
      "vtuber_name": "Kobo Kanaeru",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 7,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/06/mozaru-portrait-mz66.jpg",
      "vtuber_name": "Mozaru",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 8,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/11/kj-blosch-portrait-66.jpg",
      "vtuber_name": "KJ Juniper Blosch",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 9,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/07/reina-keina-portrait-66.jpg",
      "vtuber_name": "Reina Keina",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 10,
      "photo":
          "https://hololist.net/wp-content/uploads/2023/01/gabriel-abyssia-portrait-66.jpg",
      "vtuber_name": "Gabriel Abyssia",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 11,
      "photo":
          "https://pbs.twimg.com/media/F9IFl7ha4AAFbG1?format=jpg&name=large",
      "vtuber_name": "Liliana Aster",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
    {
      "id": 12,
      "photo":
          "https://hololist.net/wp-content/uploads/2022/06/neisa-voetius-portrait-66.jpg",
      "vtuber_name": "Neisa Voetius",
      "category": "V-Tuber",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "birthday_date": "",
      "debut_date": "",
      "is_favorite": false,
    },
  ];

  void filterSearchResults(String query) {
    List<Map<String, dynamic>> results = [];
    if (query.isEmpty) {
      results = vtuberlist;
    } else {
      results = vtuberlist
          .where((item) => item['vtuber_name']
              .toString()
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      searchListVtuber = results;
    });
  }
}
