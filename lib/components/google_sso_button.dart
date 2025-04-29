import 'package:flutter/material.dart';

/// A customized button widget for Google Sign-In functionality.
///
/// This button follows Google's brand guidelines with appropriate styling.
class GoogleSSOButton extends StatelessWidget {
  /// The callback function to be executed when the button is pressed.
  final VoidCallback onPressed;
  
  /// Optional text to display on the button. Defaults to 'Sign in with Google'.
  final String buttonText;
  
  /// Path to the Google logo asset. Defaults to the standard Google logo.
  final String logoPath;
  
  /// Height of the button. Defaults to 56.
  final double height;

  const GoogleSSOButton({
    super.key,
    required this.onPressed,
    this.buttonText = 'Sign in with Google',
    this.logoPath = 'assets/images/google_logo.png',
    this.height = 56,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        minimumSize: Size.fromHeight(height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logoPath,
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 24),
          Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
