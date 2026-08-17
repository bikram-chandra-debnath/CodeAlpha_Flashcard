import 'package:flashcard/core/common/widgets/custom_elevated_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/bloc/card/card_bloc.dart';
import 'package:flashcard/features/home/bloc/card/card_event.dart';
import 'package:flashcard/features/home/bloc/card/card_state.dart';
import 'package:flashcard/features/home/data/datasource/cards_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocSelector<CardBloc, CardState, bool>(
        selector: (state) {
          return state.isFliped;
        },
        builder: (context, state) {
          return AppElevatedBtn(
            color: state ? AppColors.sucess : AppColors.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Next",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Icon(Icons.arrow_forward),
              ],
            ),
            onPressed: () {
              context.read<CardBloc>().add(
                CardNextEvent(totalCards: cards.length),
              );
            },
          );
        },
      ),
    );
  }
}
