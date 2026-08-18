import 'package:flashcard/core/Routes/route_paths.dart';
import 'package:flashcard/core/common/widgets/custom_elevated_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/data/datasource/cards_list.dart';
import 'package:flashcard/features/home/data/models/flash_card_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key, this.index, this.question, this.answer});

  final int? index;
  final TextEditingController? question, answer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.defaultSpace,
        right: AppSizes.defaultSpace,
        bottom: AppSizes.defaultSpace,
      ),
      child: AppElevatedBtn(
        color: AppColors.primary,
        child: Text(
          "Done",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        ),
        onPressed: () {
          if (index != null) {
            cards[index!.toInt()] = FlashCardModel(
              id: index!,
              question: question!.text,
              answer: answer!.text,
              reactions: ReactionModel(like: 0, love: 0, helpful: 0),
            );
          }

          context.canPop() ? context.pop() : context.go(RoutePaths.home);
        },
      ),
    );
  }
}
