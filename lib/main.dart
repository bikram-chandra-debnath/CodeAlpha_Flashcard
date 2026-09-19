import 'package:firebase_core/firebase_core.dart';
import 'package:flashcard/firebase_options.dart';
import 'package:flashcard/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
