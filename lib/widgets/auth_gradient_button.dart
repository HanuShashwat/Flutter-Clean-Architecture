import 'package:flutter/material.dart';
import '../theme/app_pallete.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
            //AppPallete.gradient3,
          ],
          begin: .bottomLeft,
          end: .topRight,
        ),
        borderRadius: .circular(8)
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 16,
            fontWeight: .w600,
          ),
        ),
      ),
    );
  }
}
