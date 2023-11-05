import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/calendar_view.dart';

class CalendarController extends State<CalendarView> {
  static late CalendarController instance;
  late CalendarView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> categories = [
    {
      "id": 1,
      'category_name': 'Birthday',
      'image':
          'https://4.bp.blogspot.com/-Ubf9VywnJ2E/UYG_s6NF-YI/AAAAAAAARCs/lUHIkaOMy4w/s800/birthday_rosoku.png',
    },
    {
      "id": 2,
      'category_name': 'Debut',
      'image':
          'https://4.bp.blogspot.com/-5EmrK8uKs54/WkR6OilV53I/AAAAAAABJVI/BFBcinvseFY5V3mNGezd4qtMQxJ2KEKcQCLcBGAs/s800/youtuber_virtual.png',
    },
  ];
}
