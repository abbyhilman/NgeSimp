import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/forgot_passowrd_view.dart';

class ForgotPassowrdController extends State<ForgotPassowrdView> {
  static late ForgotPassowrdController instance;
  late ForgotPassowrdView view;

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
