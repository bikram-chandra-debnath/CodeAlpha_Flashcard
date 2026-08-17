import 'package:flashcard/core/common/widgets/custom_elevated_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/bloc/card/card_bloc.dart';
import 'package:flashcard/features/home/bloc/card/card_event.dart';
import 'package:flashcard/features/home/bloc/card/card_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowButton extends StatelessWidget {
  const ShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CardBloc, CardState, bool>(
      selector: (state) {
        return state.isFliped;
      },
      builder: (context, state) {
        return AppElevatedBtn(
          color: state ? AppColors.sucess : AppColors.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.visibility),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text(
                "Show Answer",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          onPressed: () {
            context.read<CardBloc>().add(CardFlipEvent());
          },
        );
      },
    );
  }
}
