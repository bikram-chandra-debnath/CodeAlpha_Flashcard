import 'package:flashcard/core/common/widgets/custom_app_bar.dart';
import 'package:flashcard/core/common/widgets/custom_circular_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
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
      body: Column(children: []),
    );
  }
}
