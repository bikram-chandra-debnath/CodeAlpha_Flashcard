import 'package:flashcard/features/home/data/models/flash_card_model.dart';

final List<FlashCardModel> cards = [
  FlashCardModel(
    id: 1,
    question: "What is Flutter?",
    answer:
        "Flutter is Google's UI toolkit for building cross-platform applications.",
    reactions: const ReactionModel(like: 12, love: 5, helpful: 8),
  ),

  FlashCardModel(
    id: 2,
    question: "What is Dart?",
    answer:
        "Dart is the programming language used to build Flutter applications.",
    reactions: const ReactionModel(like: 18, love: 7, helpful: 10),
  ),

  FlashCardModel(
    id: 3,
    question: "What is BLoC?",
    answer:
        "BLoC is a predictable state management pattern that separates business logic from the UI.",
    reactions: const ReactionModel(like: 15, love: 4, helpful: 12),
  ),

  FlashCardModel(
    id: 4,
    question: "What is a Widget in Flutter?",
    answer: "A Widget is a building block of Flutter's user interface.",
    reactions: const ReactionModel(like: 22, love: 9, helpful: 15),
  ),

  FlashCardModel(
    id: 5,
    question: "What is PageView?",
    answer:
        "PageView is a Flutter widget that allows users to scroll between pages.",
    reactions: const ReactionModel(like: 14, love: 6, helpful: 11),
  ),

  FlashCardModel(
    id: 6,
    question: "What is a StatelessWidget?",
    answer:
        "A StatelessWidget is a widget whose UI does not depend on mutable state.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 9),
  ),

  FlashCardModel(
    id: 7,
    question: "What is a StatefulWidget?",
    answer:
        "A StatefulWidget is a widget that can change its state during its lifetime.",
    reactions: const ReactionModel(like: 19, love: 8, helpful: 12),
  ),

  FlashCardModel(
    id: 8,
    question: "What is BuildContext?",
    answer:
        "BuildContext represents the location of a widget within the widget tree.",
    reactions: const ReactionModel(like: 13, love: 4, helpful: 8),
  ),

  FlashCardModel(
    id: 9,
    question: "What is the build method?",
    answer:
        "The build method describes the widgets that should be displayed on the screen.",
    reactions: const ReactionModel(like: 21, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 10,
    question: "What is hot reload?",
    answer:
        "Hot reload applies code changes to a running Flutter application without restarting it.",
    reactions: const ReactionModel(like: 25, love: 10, helpful: 17),
  ),

  FlashCardModel(
    id: 11,
    question: "What is hot restart?",
    answer:
        "Hot restart completely restarts the Flutter application and resets its current state.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 11),
  ),

  FlashCardModel(
    id: 12,
    question: "What is pubspec.yaml?",
    answer:
        "pubspec.yaml contains project metadata, dependencies, assets, and Flutter configuration.",
    reactions: const ReactionModel(like: 17, love: 5, helpful: 13),
  ),

  FlashCardModel(
    id: 13,
    question: "What is Flutter SDK?",
    answer:
        "Flutter SDK contains the framework, tools, libraries, and utilities needed to build Flutter applications.",
    reactions: const ReactionModel(like: 14, love: 4, helpful: 10),
  ),

  FlashCardModel(
    id: 14,
    question: "What is MaterialApp?",
    answer:
        "MaterialApp provides Material Design features and application-level configuration.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 15),
  ),

  FlashCardModel(
    id: 15,
    question: "What is Scaffold?",
    answer:
        "Scaffold provides the basic visual structure of a Material Design screen.",
    reactions: const ReactionModel(like: 22, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 16,
    question: "What is AppBar?",
    answer:
        "AppBar is the top application bar commonly used for titles, actions, and navigation.",
    reactions: const ReactionModel(like: 19, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 17,
    question: "What is SafeArea?",
    answer:
        "SafeArea keeps UI content away from system areas such as notches and status bars.",
    reactions: const ReactionModel(like: 15, love: 5, helpful: 11),
  ),

  FlashCardModel(
    id: 18,
    question: "What is Container?",
    answer:
        "Container is a versatile widget used for layout, sizing, padding, margins, and decoration.",
    reactions: const ReactionModel(like: 24, love: 9, helpful: 18),
  ),

  FlashCardModel(
    id: 19,
    question: "What is SizedBox?",
    answer: "SizedBox creates a widget with a specific width or height.",
    reactions: const ReactionModel(like: 16, love: 4, helpful: 10),
  ),

  FlashCardModel(
    id: 20,
    question: "What is Padding?",
    answer: "Padding adds empty space around its child widget.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 12),
  ),

  FlashCardModel(
    id: 21,
    question: "What is Center?",
    answer: "Center positions its child in the center of the available space.",
    reactions: const ReactionModel(like: 15, love: 4, helpful: 9),
  ),

  FlashCardModel(
    id: 22,
    question: "What is Column?",
    answer: "Column arranges its children vertically.",
    reactions: const ReactionModel(like: 21, love: 7, helpful: 15),
  ),

  FlashCardModel(
    id: 23,
    question: "What is Row?",
    answer: "Row arranges its children horizontally.",
    reactions: const ReactionModel(like: 20, love: 6, helpful: 14),
  ),

  FlashCardModel(
    id: 24,
    question: "What is Stack?",
    answer: "Stack allows widgets to be positioned on top of one another.",
    reactions: const ReactionModel(like: 23, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 25,
    question: "What is Expanded?",
    answer:
        "Expanded makes a child fill the available space along the main axis.",
    reactions: const ReactionModel(like: 17, love: 5, helpful: 13),
  ),

  FlashCardModel(
    id: 26,
    question: "What is Flexible?",
    answer:
        "Flexible allows a child to occupy available space without requiring it to fill all of it.",
    reactions: const ReactionModel(like: 14, love: 4, helpful: 10),
  ),

  FlashCardModel(
    id: 27,
    question: "What is ListView?",
    answer: "ListView displays a scrollable list of widgets.",
    reactions: const ReactionModel(like: 22, love: 8, helpful: 15),
  ),

  FlashCardModel(
    id: 28,
    question: "What is GridView?",
    answer: "GridView displays widgets in a two-dimensional grid.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 12),
  ),

  FlashCardModel(
    id: 29,
    question: "What is PageView.builder?",
    answer: "PageView.builder creates pages lazily as they are needed.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 30,
    question: "What is ListView.builder?",
    answer:
        "ListView.builder creates list items lazily and is useful for large lists.",
    reactions: const ReactionModel(like: 19, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 31,
    question: "What is Navigator?",
    answer:
        "Navigator manages a stack of routes and handles navigation between screens.",
    reactions: const ReactionModel(like: 21, love: 7, helpful: 15),
  ),

  FlashCardModel(
    id: 32,
    question: "What is a Route in Flutter?",
    answer:
        "A Route represents a screen or destination managed by the Navigator.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 11),
  ),

  FlashCardModel(
    id: 33,
    question: "What is Navigator.push?",
    answer: "Navigator.push adds a new route to the navigation stack.",
    reactions: const ReactionModel(like: 17, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 34,
    question: "What is Navigator.pop?",
    answer:
        "Navigator.pop removes the current route from the navigation stack.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 35,
    question: "What is named routing?",
    answer:
        "Named routing uses predefined route names to navigate between screens.",
    reactions: const ReactionModel(like: 14, love: 4, helpful: 9),
  ),

  FlashCardModel(
    id: 36,
    question: "What is state management?",
    answer:
        "State management is the process of managing and updating application state.",
    reactions: const ReactionModel(like: 23, love: 9, helpful: 17),
  ),

  FlashCardModel(
    id: 37,
    question: "Why is state management important?",
    answer: "State management helps keep application data and UI synchronized.",
    reactions: const ReactionModel(like: 20, love: 8, helpful: 15),
  ),

  FlashCardModel(
    id: 38,
    question: "What is Cubit?",
    answer:
        "Cubit is a simpler BLoC class that changes state without requiring events.",
    reactions: const ReactionModel(like: 19, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 39,
    question: "What is an Event in BLoC?",
    answer: "An Event represents an action or input sent to a BLoC.",
    reactions: const ReactionModel(like: 15, love: 5, helpful: 11),
  ),

  FlashCardModel(
    id: 40,
    question: "What is a State in BLoC?",
    answer:
        "A State represents the current condition of the UI or application logic.",
    reactions: const ReactionModel(like: 21, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 41,
    question: "What is an Emitter in BLoC?",
    answer: "Emitter is used inside a BLoC event handler to emit new states.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 42,
    question: "What does BlocBuilder do?",
    answer:
        "BlocBuilder rebuilds its UI whenever the relevant BLoC state changes.",
    reactions: const ReactionModel(like: 22, love: 8, helpful: 17),
  ),

  FlashCardModel(
    id: 43,
    question: "What does BlocListener do?",
    answer: "BlocListener executes side effects when a BLoC state changes.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 14),
  ),

  FlashCardModel(
    id: 44,
    question: "What does BlocConsumer do?",
    answer: "BlocConsumer combines BlocBuilder and BlocListener in one widget.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 15),
  ),

  FlashCardModel(
    id: 45,
    question: "What is context.read?",
    answer:
        "context.read retrieves a BLoC or provider without listening for changes.",
    reactions: const ReactionModel(like: 17, love: 5, helpful: 13),
  ),

  FlashCardModel(
    id: 46,
    question: "What is context.watch?",
    answer:
        "context.watch retrieves a dependency and rebuilds when its value changes.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 47,
    question: "What is dependency injection?",
    answer:
        "Dependency injection provides required dependencies to classes instead of creating them internally.",
    reactions: const ReactionModel(like: 19, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 48,
    question: "What is GetX?",
    answer:
        "GetX is a Flutter package that provides state management, navigation, and dependency injection.",
    reactions: const ReactionModel(like: 24, love: 10, helpful: 18),
  ),

  FlashCardModel(
    id: 49,
    question: "What is Provider?",
    answer:
        "Provider is a Flutter state management and dependency injection solution.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 50,
    question: "What is Riverpod?",
    answer:
        "Riverpod is a reactive state management and dependency injection framework for Dart and Flutter.",
    reactions: const ReactionModel(like: 22, love: 9, helpful: 16),
  ),

  FlashCardModel(
    id: 51,
    question: "What is Clean Architecture?",
    answer:
        "Clean Architecture separates an application into layers with clear responsibilities.",
    reactions: const ReactionModel(like: 21, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 52,
    question: "What is MVVM?",
    answer:
        "MVVM separates UI from application logic using Models, Views, and ViewModels.",
    reactions: const ReactionModel(like: 18, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 53,
    question: "What is a repository?",
    answer:
        "A repository provides an abstraction for accessing and managing data.",
    reactions: const ReactionModel(like: 15, love: 5, helpful: 11),
  ),

  FlashCardModel(
    id: 54,
    question: "What is a data source?",
    answer:
        "A data source is where application data comes from, such as an API or database.",
    reactions: const ReactionModel(like: 14, love: 4, helpful: 10),
  ),

  FlashCardModel(
    id: 55,
    question: "What is an API?",
    answer:
        "An API allows different software systems to communicate with each other.",
    reactions: const ReactionModel(like: 25, love: 10, helpful: 19),
  ),

  FlashCardModel(
    id: 56,
    question: "What is REST API?",
    answer:
        "A REST API is an API architecture commonly using HTTP methods and resources.",
    reactions: const ReactionModel(like: 22, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 57,
    question: "What is HTTP?",
    answer:
        "HTTP is a protocol used for communication between clients and servers.",
    reactions: const ReactionModel(like: 19, love: 6, helpful: 14),
  ),

  FlashCardModel(
    id: 58,
    question: "What is JSON?",
    answer:
        "JSON is a lightweight text format commonly used to exchange structured data.",
    reactions: const ReactionModel(like: 23, love: 8, helpful: 17),
  ),

  FlashCardModel(
    id: 59,
    question: "What is a GET request?",
    answer: "A GET request retrieves data from a server.",
    reactions: const ReactionModel(like: 18, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 60,
    question: "What is a POST request?",
    answer:
        "A POST request sends data to a server to create or process a resource.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 61,
    question: "What is a PUT request?",
    answer: "A PUT request is commonly used to update or replace a resource.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 11),
  ),

  FlashCardModel(
    id: 62,
    question: "What is a DELETE request?",
    answer: "A DELETE request removes a resource from a server.",
    reactions: const ReactionModel(like: 15, love: 4, helpful: 10),
  ),

  FlashCardModel(
    id: 63,
    question: "What is Firebase?",
    answer:
        "Firebase is Google's platform providing backend services for applications.",
    reactions: const ReactionModel(like: 24, love: 9, helpful: 18),
  ),

  FlashCardModel(
    id: 64,
    question: "What is Firebase Authentication?",
    answer: "Firebase Authentication provides user authentication services.",
    reactions: const ReactionModel(like: 21, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 65,
    question: "What is Cloud Firestore?",
    answer: "Cloud Firestore is a NoSQL cloud database provided by Firebase.",
    reactions: const ReactionModel(like: 23, love: 9, helpful: 17),
  ),

  FlashCardModel(
    id: 66,
    question: "What is Firebase Storage?",
    answer:
        "Firebase Storage stores files such as images and videos in the cloud.",
    reactions: const ReactionModel(like: 17, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 67,
    question: "What is Hive?",
    answer:
        "Hive is a lightweight local database commonly used in Flutter applications.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 15),
  ),

  FlashCardModel(
    id: 68,
    question: "What is local storage?",
    answer:
        "Local storage saves application data directly on the user's device.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 69,
    question: "What is asynchronous programming?",
    answer:
        "Asynchronous programming allows operations to run without blocking the main execution flow.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 70,
    question: "What is Future in Dart?",
    answer:
        "Future represents a value or result that will become available later.",
    reactions: const ReactionModel(like: 21, love: 8, helpful: 15),
  ),

  FlashCardModel(
    id: 71,
    question: "What does async mean?",
    answer:
        "The async keyword marks a function that performs asynchronous operations.",
    reactions: const ReactionModel(like: 17, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 72,
    question: "What does await mean?",
    answer:
        "await pauses execution within an async function until an asynchronous operation completes.",
    reactions: const ReactionModel(like: 19, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 73,
    question: "What is a Stream?",
    answer: "A Stream provides a sequence of asynchronous values over time.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 74,
    question: "What is StreamBuilder?",
    answer:
        "StreamBuilder rebuilds its UI based on values received from a Stream.",
    reactions: const ReactionModel(like: 20, love: 8, helpful: 15),
  ),

  FlashCardModel(
    id: 75,
    question: "What is FutureBuilder?",
    answer: "FutureBuilder builds UI based on the current state of a Future.",
    reactions: const ReactionModel(like: 22, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 76,
    question: "What is null safety?",
    answer: "Null safety helps prevent unexpected null reference errors.",
    reactions: const ReactionModel(like: 24, love: 9, helpful: 18),
  ),

  FlashCardModel(
    id: 77,
    question: "What is a nullable variable?",
    answer:
        "A nullable variable is allowed to contain null and is declared using the ? symbol.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 78,
    question: "What is the final keyword?",
    answer: "final means a variable can be assigned only once.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 79,
    question: "What is the const keyword?",
    answer: "const creates a compile-time constant.",
    reactions: const ReactionModel(like: 19, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 80,
    question: "What is a class in Dart?",
    answer: "A class is a blueprint used to create objects.",
    reactions: const ReactionModel(like: 23, love: 9, helpful: 17),
  ),

  FlashCardModel(
    id: 81,
    question: "What is an object?",
    answer: "An object is an instance of a class.",
    reactions: const ReactionModel(like: 21, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 82,
    question: "What is inheritance?",
    answer: "Inheritance allows one class to reuse or extend another class.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 14),
  ),

  FlashCardModel(
    id: 83,
    question: "What is polymorphism?",
    answer:
        "Polymorphism allows objects of different types to be treated through a common interface.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 84,
    question: "What is encapsulation?",
    answer:
        "Encapsulation keeps data and implementation details controlled within a class.",
    reactions: const ReactionModel(like: 19, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 85,
    question: "What is abstraction?",
    answer:
        "Abstraction hides unnecessary implementation details and exposes essential behavior.",
    reactions: const ReactionModel(like: 22, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 86,
    question: "What is a constructor?",
    answer: "A constructor initializes an object when it is created.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 15),
  ),

  FlashCardModel(
    id: 87,
    question: "What is a named constructor?",
    answer:
        "A named constructor provides an additional named way to construct an object.",
    reactions: const ReactionModel(like: 15, love: 5, helpful: 11),
  ),

  FlashCardModel(
    id: 88,
    question: "What is a factory constructor?",
    answer:
        "A factory constructor can return an existing object or create an object conditionally.",
    reactions: const ReactionModel(like: 17, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 89,
    question: "What is an abstract class?",
    answer:
        "An abstract class cannot normally be instantiated directly and can define abstract behavior.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 90,
    question: "What is an interface?",
    answer:
        "An interface defines a contract that implementing classes must follow.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 91,
    question: "What is a mixin?",
    answer:
        "A mixin allows reusable functionality to be added to multiple classes.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 15),
  ),

  FlashCardModel(
    id: 92,
    question: "What is an extension?",
    answer:
        "An extension adds new functionality to an existing type without modifying the original type.",
    reactions: const ReactionModel(like: 19, love: 7, helpful: 14),
  ),

  FlashCardModel(
    id: 93,
    question: "What is an enum?",
    answer: "An enum represents a fixed set of named values.",
    reactions: const ReactionModel(like: 17, love: 5, helpful: 12),
  ),

  FlashCardModel(
    id: 94,
    question: "What is a List in Dart?",
    answer: "A List is an ordered collection of values.",
    reactions: const ReactionModel(like: 22, love: 8, helpful: 16),
  ),

  FlashCardModel(
    id: 95,
    question: "What is a Map in Dart?",
    answer: "A Map stores data as key-value pairs.",
    reactions: const ReactionModel(like: 21, love: 7, helpful: 15),
  ),

  FlashCardModel(
    id: 96,
    question: "What is a Set in Dart?",
    answer:
        "A Set is a collection that stores unique values without duplicates.",
    reactions: const ReactionModel(like: 18, love: 6, helpful: 13),
  ),

  FlashCardModel(
    id: 97,
    question: "What are generics in Dart?",
    answer:
        "Generics allow classes, collections, and functions to work with different types safely.",
    reactions: const ReactionModel(like: 16, love: 5, helpful: 11),
  ),

  FlashCardModel(
    id: 98,
    question: "What is an exception?",
    answer:
        "An exception represents an error or unexpected condition during program execution.",
    reactions: const ReactionModel(like: 19, love: 6, helpful: 14),
  ),

  FlashCardModel(
    id: 99,
    question: "What is try-catch?",
    answer: "try-catch is used to catch and handle exceptions in Dart.",
    reactions: const ReactionModel(like: 23, love: 8, helpful: 17),
  ),

  FlashCardModel(
    id: 100,
    question: "What is the difference between == and identical()?",
    answer:
        "== checks equality while identical() checks whether two references point to the same object.",
    reactions: const ReactionModel(like: 20, love: 7, helpful: 15),
  ),
];
