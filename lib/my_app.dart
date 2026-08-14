import 'package:flashcard/core/common/widgets/custom_circular_button.dart';
import 'package:flashcard/core/utils/theme/theme.dart';
import 'package:flashcard/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard',
      theme: AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,

      home: Navigations(),
    );
  }
}

class Navigations extends StatelessWidget {
  const Navigations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      floatingActionButton: AppCircularBtn(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            Spacer(),

            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.book)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
