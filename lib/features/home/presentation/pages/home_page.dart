import 'package:flashcard/core/common/widgets/custom_circular_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(children: []),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Flashcard",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: AppColors.textWhite,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          AppCircularBtn(
            color: Colors.transparent,
            child: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.maxFinite, kToolbarHeight);
}
