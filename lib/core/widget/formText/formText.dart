// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:vtuber_list/core/theme/theme_config.dart';

class QFormText extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String text)? onChanged;
  final Function(String text)? onSubmitted;

  const QFormText(
      {Key? key,
      required this.label,
      this.prefixIcon,
      this.suffixIcon,
      this.onChanged,
      this.onSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          color: disableTextColor),
      child: Row(
        children: [
          if (prefixIcon != null) ...[
            Icon(
              prefixIcon,
              size: 18.0,
              color: disableIconColor,
            ),
            const SizedBox(
              height: 12.0,
            ),
          ],
          Expanded(
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                  hintText: label,
                  hintStyle: TextStyle(color: disableIconColor)),
              onChanged: (value) {
                if (onChanged != null) {
                  onChanged!(value);
                }
              },
              onFieldSubmitted: (value) {
                if (onSubmitted != null) {
                  if (onSubmitted != null) {
                    onSubmitted!(value);
                  }
                }
              },
            ),
          ),
          if (suffixIcon != null) ...[
            const SizedBox(
              height: 12.0,
            ),
            Icon(
              suffixIcon,
              size: 18.0,
              color: disableIconColor,
            )
          ],
        ],
      ),
    );
  }
}
