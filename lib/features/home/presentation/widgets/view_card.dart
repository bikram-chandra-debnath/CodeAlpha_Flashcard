import 'package:flashcard/core/common/widgets/custom_circular_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/core/utils/helpers/device_helper.dart';
import 'package:flashcard/features/home/bloc/card/card_bloc.dart';
import 'package:flashcard/features/home/bloc/card/card_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewCard extends StatelessWidget {
  const ViewCard({super.key, required this.text, this.isAnswer = false});

  final String text;
  final bool isAnswer;

  @override
  Widget build(BuildContext context) {
    final height = DeviceHelper.getScreenHeight(context);
    final width = DeviceHelper.getScreenWidth(context);
    return BlocSelector<CardBloc, CardState, bool>(
      selector: (state) {
        return state.isFliped;
      },
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(AppSizes.md),
          height: height * 0.4,
          width: width * 0.7,
          decoration: BoxDecoration(
            border: Border.all(
              color: state ? AppColors.sucess : AppColors.primary,
              width: 2,
            ),

            gradient: LinearGradient(
              begin: AlignmentGeometry.directional(1, 0.8),
              end: AlignmentGeometry.directional(1, -0.5),

              colors: [
                state
                    ? AppColors.sucess.withValues(alpha: 0.5)
                    : const Color(0xff552586),
                state
                    ? AppColors.sucess.withValues(alpha: 0.8)
                    : const Color(0xff6A359C),
                state ? AppColors.sucess : const Color(0xff804FB3),
              ],
            ),
            borderRadius: BorderRadius.circular(AppSizes.md),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // top buttons
              state
                  ? SizedBox()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppCircularBtn(
                          color: Colors.transparent,
                          child: Icon(Icons.delete, size: 20),
                          onPressed: () {},
                        ),
                        AppCircularBtn(
                          color: Colors.transparent,
                          child: Icon(Icons.edit, size: 20),
                          onPressed: () {},
                        ),
                      ],
                    ),
              Spacer(),

              state
                  ? Text(
                      "Answer:",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    )
                  : SizedBox(),
              // text/ answers
              Center(
                child: Text(
                  text,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
