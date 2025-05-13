import 'package:flutter/material.dart';
// import 'package:fooddeliveryapp/pages/register_page.dart';
import 'package:provider/provider.dart'; // এটা খুবই জরুরি
import 'package:fooddeliveryapp/themes/theme_provider.dart';
import 'package:fooddeliveryapp/auth/login_or_register.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),

  //     home: RegisterPage(
  // onTap: () {
  //   // এখানে আপনি register পেজে যাওয়ার জন্য লজিক দিবেন
  // },
//),
      theme: themeProvider.themeData,
    );
  }
}
