import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCircularBtn extends StatelessWidget {
  const AppCircularBtn({
    super.key,
    required this.child,

    this.onPressed,
    this.color = AppColors.primary,
    this.enableShadow = false,
    this.shadowColor,
    this.focusColor = Colors.transparent,
    this.highlightColor = Colors.transparent,
    this.hoverColor = Colors.transparent,
    this.splashColor = Colors.transparent,
    this.padding,
    this.size = 50,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final Color color, focusColor, highlightColor, hoverColor, splashColor;
  final Color? shadowColor;
  final bool enableShadow;
  final EdgeInsetsGeometry? padding;
  final double size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: focusColor,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      onTap: onPressed,
      child: Container(
        height: size,
        width: size,
        padding: padding ?? EdgeInsetsGeometry.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
              color: enableShadow
                  ? shadowColor ?? AppColors.primary.withValues(alpha: 0.2)
                  : Colors.transparent,
              blurRadius: enableShadow ? 8 : 0,
              spreadRadius: enableShadow ? 4 : 0,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Center(child: child),
      ),
    );
  }
}
