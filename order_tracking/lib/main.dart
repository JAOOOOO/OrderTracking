import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:order_tracking/presentation/order_tracking/order_tracking_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.lime,
      ),
      home: const OrderTrackingScreen(),
    );
  }
}
