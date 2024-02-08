import 'package:flutter/material.dart';

class Utils {
  static void showErrorDialog(BuildContext context, String errorMessage) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(errorMessage),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static void showSignInSnackbar(BuildContext context, bool success) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(success ? 'Sign in successful!' : 'Sign in failed.'),
        backgroundColor: success ? Colors.green : Colors.red,
      ),
    );
  }

  static void showAccountCreatedSnackbar(context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Text('Account created!'), backgroundColor: Colors.green),
    );
  }
}
