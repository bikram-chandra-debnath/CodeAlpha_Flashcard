import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppElevatedBtn extends StatelessWidget {
  const AppElevatedBtn({
    super.key,
    required this.child,
    this.size = 50.0,
    required this.onPressed,
    this.color = AppColors.primary,
    this.enableShadow = false,
    this.shadowColor,
    this.padding,
    this.focusColor = Colors.transparent,
    this.highlightColor = Colors.transparent,
    this.hoverColor = Colors.transparent,
    this.splashColor = Colors.transparent,
  });

  final Widget child;
  final double size;
  final VoidCallback onPressed;
  final Color color, focusColor, highlightColor, hoverColor, splashColor;
  final Color? shadowColor;
  final bool enableShadow;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: focusColor,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      onTap: onPressed,
      child: Card(
        elevation: 02,
        color: shadowColor,
        child: Container(
          padding: padding,
          height: size,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

            gradient: LinearGradient(
              begin: AlignmentGeometry.directional(1, 0.8),
              end: AlignmentGeometry.directional(1, -0.5),

              colors: [
                color.withValues(alpha: 0.5),

                color.withValues(alpha: 0.8),

                color,
              ],
            ),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
