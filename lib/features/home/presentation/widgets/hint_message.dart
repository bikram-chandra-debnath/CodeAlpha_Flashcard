import 'package:flutter/material.dart';

class HintMessage extends StatelessWidget {
  const HintMessage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Text(
      "Tap \"Show Answer\" to see the answer",
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
