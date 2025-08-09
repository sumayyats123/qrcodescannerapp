import 'package:flutter/material.dart';
import 'package:scanner/widgets/custom_button.dart';
import 'package:scanner/widgets/custom_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isLoading = false;

 void _handleLogin() {
  if (_formKey.currentState?.validate() ?? false) {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    setState(() => _isLoading = true);

    Future.delayed(const Duration(seconds: 2), () {
      setState(() => _isLoading = false);
      debugPrint("Email: $email");
      debugPrint("Password: $password");

      Navigator.pushReplacementNamed(context, '/dashboard');
    });
  }
}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                // Icon(
                //   Icons.lock,
                //   size: 100,
                //   color: theme.iconTheme.color,
                // ),
               Image.asset('assets/images/logo (1).png',height: 200,
  width: 200,),
               
                const SizedBox(height: 24),

                Text(
                  "Welcome back!",
                  textAlign: TextAlign.center,
                  style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),

                Text(
                  "Please log in with your email and password.",
                  textAlign: TextAlign.center,
                  style: textTheme.bodySmall?.copyWith(color: Colors.white70),
                ),
                const SizedBox(height: 32),

                // Email field
                CustomTextFormField(
                  controller: _emailController,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    if (!value.contains("@") || !value.contains(".")) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // Password field
                CustomTextFormField(
                  controller: _passwordController,
                  hintText: "Password",
                  isObscure: !_isPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.white38,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 24),

                // Login button
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    title: "Login",
                    isLoading: _isLoading,
                    onPressed: _handleLogin,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
