import 'package:flashcard/core/Routes/route_names.dart';
import 'package:flashcard/core/Routes/route_paths.dart';
import 'package:flashcard/features/add/presentation/pages/add_page.dart';
import 'package:flashcard/features/home/data/models/flash_card_model.dart';
import 'package:flashcard/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RouteNames.home,
  routes: [
    GoRoute(
      path: RoutePaths.home,
      name: RouteNames.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RoutePaths.add,
      name: RouteNames.add,
      builder: (context, state) => const AddPage(),
    ),
    GoRoute(
      path: RoutePaths.update,
      name: RouteNames.update,
      builder: (context, state) {
        final cardInfo = state.extra as FlashCardModel;
        return AddPage(pageTitle: "Update Card" , cardInfo: cardInfo , );
      },
    ),
  ],
);
