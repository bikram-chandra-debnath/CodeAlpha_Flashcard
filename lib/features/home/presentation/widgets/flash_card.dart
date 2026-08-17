import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/bloc/card/card_bloc.dart';
import 'package:flashcard/features/home/bloc/card/card_state.dart';
import 'package:flashcard/features/home/data/datasource/cards_list.dart';
import 'package:flashcard/features/home/presentation/widgets/view_card.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlashCard extends StatefulWidget {
  const FlashCard({super.key});

  @override
  State<FlashCard> createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {
  late FlipCardController flipCardController;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    flipCardController = FlipCardController();
    super.initState();
  }

  @override
  void dispose() {
    pageController;
    flipCardController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 20,
      child: BlocListener<CardBloc, CardState>(
        listener: (contex, state) {
          if (state.isFliped == true) {
            flipCardController.toggleCard();
          } else if (state.isFliped == false) {
            flipCardController.toggleCard();
          }

          pageController.animateToPage(
            state.currentPage,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        },
        child: PageView(
          controller: pageController,
          pageSnapping: false,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(cards.length, (index) {
            final card = cards[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.lg * 2.3,
              ),

              child: FlipCard(
                
                controller: flipCardController,
                flipOnTouch: false,
                front: ViewCard(text: card.question),
                back: ViewCard(text: card.answer),
              ),
            );
          }),
        ),
      ),
    );
  }
}
