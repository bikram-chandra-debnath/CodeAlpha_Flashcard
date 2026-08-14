import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.centerTitle = false,
  });

  final Widget? title, leading;
  final List<Widget>? actions;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: AppBar(
        leading: leading,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: title,
        actions: actions,
        centerTitle: centerTitle,
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.maxFinite, kToolbarHeight);
}
