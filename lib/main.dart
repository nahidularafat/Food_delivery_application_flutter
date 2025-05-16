import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/resturant.dart';
// import 'package:fooddeliveryapp/pages/register_page.dart';
import 'package:provider/provider.dart'; // এটা খুবই জরুরি
import 'package:fooddeliveryapp/themes/theme_provider.dart';
import 'package:fooddeliveryapp/auth/login_or_register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        // restaurant provider
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
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
