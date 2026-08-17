import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({
    super.key,
    this.prefix,
    this.prefixIcon,
    this.hintText,
    this.suffix,

    this.prefixText,
    this.suffixText,
    this.prefixIconColor,
    this.suffixIconColor,
    this.prefixStyle,
    this.suffixStyle,
    required this.title,
    this.controller,
    this.suffixIcon,
    this.contentPadding,
    this.fillColor,
    this.filled,
    this.istitle = true,
    this.maxLines,
    this.minLines,
  });

  final Widget? prefix, prefixIcon, suffix, suffixIcon;
  final String? hintText, prefixText, suffixText;
  final Color? prefixIconColor, suffixIconColor, fillColor;
  final TextStyle? prefixStyle, suffixStyle;
  final String title;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final bool? filled;
  final bool istitle;
  final int? maxLines, minLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        istitle
            ? Text(title, style: Theme.of(context).textTheme.titleLarge)
            : SizedBox(),
        SizedBox(height: istitle ? AppSizes.spaceBtwInputFields / 2 : 0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: AppColors.primary),
          ),
          child: TextFormField(
            controller: controller,
            maxLines: maxLines,
            minLines: minLines,

            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              border: OutlineInputBorder(borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.bodySmall,
              prefixIcon: prefixIcon,
              prefix: prefix,
              prefixIconColor: prefixIconColor,
              prefixText: prefixText,
              prefixStyle: prefixStyle,
              contentPadding: contentPadding,

              suffix: suffix,
              suffixIcon: suffixIcon,
              suffixIconColor: suffixIconColor,
              suffixText: suffixText,
              suffixStyle: suffixStyle,
              filled: filled,
              fillColor: fillColor,
            ),
          ),
        ),
      ],
    );
  }
}
