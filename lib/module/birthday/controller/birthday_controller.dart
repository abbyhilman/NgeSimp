import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/birthday_view.dart';

class BirthdayController extends State<BirthdayView> {
  static late BirthdayController instance;
  late BirthdayView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
