import 'package:flashcard/core/Routes/route_paths.dart';
import 'package:flashcard/core/common/widgets/custom_elevated_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

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
          context.canPop() ? context.pop() : context.go(RoutePaths.home);
        },
      ),
    );
  }
}
