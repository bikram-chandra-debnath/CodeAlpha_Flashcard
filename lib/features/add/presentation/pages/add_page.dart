import 'package:flashcard/core/common/widgets/custom_app_bar.dart';
import 'package:flashcard/core/common/widgets/custom_circular_button.dart';
import 'package:flashcard/core/common/widgets/custom_input_filed.dart';
import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/add/presentation/widgets/done_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key, this.question, this.answer, this.pageTitle});
  final String? question, answer, pageTitle;
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  late TextEditingController questionController;
  late TextEditingController answerController;

  @override
  void initState() {
    questionController = TextEditingController(text: widget.question);
    answerController = TextEditingController(text: widget.answer);
    super.initState();
  }

  @override
  void dispose() {
    questionController.dispose();
    answerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(widget.pageTitle ?? "Add Card"),
        leading: AppCircularBtn(
          color: Colors.transparent,
          child: Icon(Icons.arrow_back, color: AppColors.white),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: _buildBody(),

      bottomNavigationBar: DoneButton(),

      resizeToAvoidBottomInset: true,
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.defaultSpace,
        right: AppSizes.defaultSpace,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppInputField(
            controller: questionController,
            title: 'Question',
            hintText: "Write your question here !",
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields),
          AppInputField(
            controller: answerController,
            minLines: 1,
            maxLines: 5,

            title: 'Answer',
            hintText: "Write answer with explaniation",
          ),
        ],
      ),
    );
  }
}
