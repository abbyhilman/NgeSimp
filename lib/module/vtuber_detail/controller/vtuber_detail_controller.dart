import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/vtuber_detail_view.dart';

class VtuberDetailController extends State<VtuberDetailView> {
  static late VtuberDetailController instance;
  late VtuberDetailView view;

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
