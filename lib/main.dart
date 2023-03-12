import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steper_1/screens/login/view/login_screen.dart';
import 'package:steper_1/screens/login/provider/login_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LogInP(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => LogIn(),
        },
      ),
    ),
  );
}
