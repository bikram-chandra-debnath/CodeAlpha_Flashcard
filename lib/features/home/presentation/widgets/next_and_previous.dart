import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/presentation/widgets/nex_button.dart';
import 'package:flashcard/features/home/presentation/widgets/previous_button.dart';
import 'package:flutter/material.dart';

class NextAndPrevious extends StatelessWidget {
  const NextAndPrevious({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PreviousButton(),

        const SizedBox(width: AppSizes.defaultSpace),
        NextButton(),
      ],
    );
  }
}
