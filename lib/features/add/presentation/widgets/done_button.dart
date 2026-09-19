import 'package:flashcard/core/Routes/route_names.dart';
import 'package:flashcard/core/common/widgets/custom_elevated_button.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/bloc/query/query_bloc.dart';
import 'package:flashcard/features/home/bloc/query/query_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key, this.id, this.question, this.answer});

  final String? id;
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
          final date = DateTime.now();
          if (id != null) {}

          context.read<QueryBloc>().add(
            AddCardEvent(
              "${date.year}${date.month}${date.month}${date.hour}${date.minute}${date.second}",
              question!.text.toString(),
              answer!.text.toString(),
            ),
          );

          context.canPop()
              ? context.pop()
              : context.pushReplacementNamed(RouteNames.home);
        },
      ),
    );
  }
}
