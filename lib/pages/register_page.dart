import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fooddeliveryapp/components/my_button.dart';
import 'package:fooddeliveryapp/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  // Register method
  void register() async {
    // Show loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    // Make sure passwords match
    if (passwordController.text != confirmPasswordController.text) {
      // Pop loading circle
      Navigator.pop(context);
      // Show error message
      showErrorMessage("Passwords don't match!");
      return;
    }

    // Try creating the user
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      
      // Pop loading circle
      if (mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // Pop loading circle
      Navigator.pop(context);
      // Show error message
      showErrorMessage(e.code);
    }
  }

  // Error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Center(
          child: Text(
            message,
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Icon(
                  Icons.person_add_alt_1_rounded,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(height: 25),

                // App title
                Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 25),

                // Email field
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // Password field
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 10),

                // Confirm Password field
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),
                const SizedBox(height: 20),

                // Register button
                MyButton(
                  text: "Register",
                  onTap: register, // Updated to call register method
                ),
                const SizedBox(height: 20),

                // Already have an account? Sign in
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}