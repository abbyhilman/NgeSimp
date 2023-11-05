import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/debut_view.dart';

class DebutController extends State<DebutView> {
  static late DebutController instance;
  late DebutView view;

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
