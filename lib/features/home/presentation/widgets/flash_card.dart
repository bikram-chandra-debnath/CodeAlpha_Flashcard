import 'package:flashcard/core/Routes/route_names.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flashcard/features/home/bloc/card/card_bloc.dart';
import 'package:flashcard/features/home/bloc/card/card_state.dart';
import 'package:flashcard/features/home/bloc/query/query_bloc.dart';
import 'package:flashcard/features/home/bloc/query/query_state.dart';
import 'package:flashcard/features/home/data/models/flash_card_model.dart';
import 'package:flashcard/features/home/presentation/widgets/view_card.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
        child: BlocBuilder<QueryBloc, QueryState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is ErroeState) {
              return Center(
                child: Text("Error is : ${state.message.toString()}"),
              );
            }
            if (state is LoadedState) {
              return PageView(
                controller: pageController,
                pageSnapping: false,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(state.query.length, (index) {
                  final flashcard = state.query[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.lg * 2.3,
                    ),

                    child: FlipCard(
                      controller: flipCardController,
                      flipOnTouch: false,
                      front: ViewCard(
                        text: flashcard.question,
                        onDelete: () {},
                        onUpdate: () => context.pushNamed(
                          RouteNames.update,
                          extra: FlashCardModel(
                            id: index.toString(),
                            question: flashcard.question,
                            answer: flashcard.answer,
                          ),
                        ),
                      ),
                      back: ViewCard(text: flashcard.answer),
                    ),
                  );
                }),
              );
            }
            return Center(child: Text("Initializing..."));
          },
        ),
      ),
    );
  }
}
