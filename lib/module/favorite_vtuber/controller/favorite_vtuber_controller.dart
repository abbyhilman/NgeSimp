import 'package:flutter/material.dart';
import 'package:vtuber_list/core.dart';
import '../view/favorite_vtuber_view.dart';

class FavoriteVtuberController extends State<FavoriteVtuberView> {
  static late FavoriteVtuberController instance;
  late FavoriteVtuberView view;

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
