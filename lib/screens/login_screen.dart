import 'package:flutter/material.dart';
import 'package:scanner/core/constants/colors.dart';
import 'package:scanner/core/constants/dimens.dart';
import 'package:scanner/core/constants/styles.dart';
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
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/logo (1).png',
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 24),

                Text(
                  "Welcome back!",
                  textAlign: TextAlign.center,
                  style: Styles.white18w400.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimens.twentyFour,
                  ),
                ),
                const SizedBox(height: 12),

                Text(
                  "Please log in with your email and password.",
                  textAlign: TextAlign.center,
                  style: Styles.white14w400.copyWith(
                    color: AppColors.colorC5C5C6,
                    fontSize: Dimens.thirteen,
                  ),
                ),
                const SizedBox(height: 32),

                CustomTextFormField(
                  textEditingController: _emailController,
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress,
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
                const SizedBox(height: 17),

                CustomTextFormField(
                  textEditingController: _passwordController,
                  hintText: "Password",
                  isObscure: !_isPasswordVisible,
                  suffixWidget: IconButton(
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

                CustomElevatedBtn(
                  height: Dimens.fifty,
                  width: double.infinity,
                  isEnabled: !_isLoading,
                  isLoading: _isLoading,
                  onTap: _handleLogin,
                  child: Text(
                    'Login',
                    style: Styles.white16w500.copyWith(
                      color: AppColors.blackColor,
                    ),
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
