// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:vtuber_list/core/theme/theme_config.dart';

class QButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final Color? color;
  final ButtonStyle? style;
  final bool disabled;
  const QButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.color,
      this.disabled = false,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (disabled) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 42,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: disableTextColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              elevation: 0),
          child: Row(
            children: [
              Text(
                label.toUpperCase(),
                style: const TextStyle(color: Colors.black),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16.0,
                color: Colors.black,
              )
            ],
          ),
        ),
      );
    } else {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 42,
        child: ElevatedButton(
          onPressed: onPressed,
          style: style,
          child: Text(
            label.toUpperCase(),
            style: TextStyle(color: color),
          ),
        ),
      );
    }
  }
}
