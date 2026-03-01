import 'package:flutter/material.dart';
import '../../../core/theme/app_pallete.dart';
import '../widgets/auth_field.dart';
import '../widgets/auth_gradient_button.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  static route() => MaterialPageRoute(
    builder: (context) => const LoginPage(),
  );
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // formKey.currentState!.validate();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
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
              AuthField(
                hintText: 'Name',
                controller: nameController,
              ),
              const SizedBox(height: 16,),
              AuthField(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 16,),
              AuthField(
                hintText: 'Password',
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 20,),
              const AuthGradientButton(
                buttonText: 'Sign Up',
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    SignupPage.route(),
                  );
                },
                child: RichText(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
