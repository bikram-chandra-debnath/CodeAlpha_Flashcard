import 'package:flashcard/core/common/widgets/custom_app_bar.dart';
import 'package:flashcard/core/common/widgets/custom_circular_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/bloc/card/card_bloc.dart';
import 'package:flashcard/features/home/bloc/card/card_state.dart';
import 'package:flashcard/features/home/presentation/widgets/add_button.dart';
import 'package:flashcard/features/home/presentation/widgets/flash_card.dart';
import 'package:flashcard/features/home/presentation/widgets/hint_message.dart';
import 'package:flashcard/features/home/presentation/widgets/next_and_previous.dart';
import 'package:flashcard/features/home/presentation/widgets/show_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: BlocSelector<CardBloc, CardState, bool>(
          selector: (state) {
            return state.isFliped;
          },
          builder: (context, state) {
            return RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Flash",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.textWhite,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: "Card",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: state
                          ? AppColors.sucessLight
                          : AppColors.seconderyLight,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          AppCircularBtn(
            color: Colors.transparent,
            child: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            // card
            FlashCard(),

            Spacer(),
            // Answer hint
            HintMessage(),

            Spacer(),

            // show Answer button
            ShowButton(),
            Spacer(),
            // next and previous button
            NextAndPrevious(),
            Spacer(),
          ],
        ),
      ),

      bottomNavigationBar: AddButton(),
    );
  }
}
