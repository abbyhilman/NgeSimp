import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/help_view.dart';

class HelpController extends State<HelpView> {
  static late HelpController instance;
  late HelpView view;

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
