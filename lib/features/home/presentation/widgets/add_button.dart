import 'package:flashcard/core/common/widgets/custom_elevated_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/bloc/card/card_bloc.dart';
import 'package:flashcard/features/home/bloc/card/card_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.defaultSpace,
        right: AppSizes.defaultSpace,
        bottom: AppSizes.defaultSpace,
      ),
      child: BlocSelector<CardBloc, CardState, bool>(
        selector: (state) {
          return state.isFliped;
        },
        builder: (context, state) {
          return AppElevatedBtn(
            color: state ? AppColors.sucess : AppColors.primary,
            child: Text(
              "Add",
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontSize: 20),
            ),
            onPressed: () {},
          );
        },
      ),
    );
  }
}
