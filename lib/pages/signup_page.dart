import 'package:blog_app/theme/app_pallete.dart';
import 'package:blog_app/widgets/auth_field.dart';
import 'package:flutter/material.dart';
import '../widgets/auth_gradient_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              'Sign Up.',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 32,),
            const AuthField(hintText: 'Name'),
            const SizedBox(height: 16,),
            const AuthField(hintText: 'Email'),
            const SizedBox(height: 16,),
            const AuthField(hintText: 'Password'),
            const SizedBox(height: 20,),
            const AuthGradientButton(),
            const SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                text: "Already have an account?",
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: ' Sign In',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppPallete.gradient2,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
