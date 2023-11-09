import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/logout_view.dart';

class LogoutController extends State<LogoutView> {
  static late LogoutController instance;
  late LogoutView view;

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
