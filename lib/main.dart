import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'providers/event_provider.dart';
import 'screens/dashboard_screen.dart';
import 'screens/login_screen.dart';
import 'screens/scanner_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => EventProvider()),
      ],
      child: MaterialApp(
        title: 'QR Scanner Admin',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Consumer<AuthProvider>(
          builder: (context, auth, _) => auth.isLoggedIn
              ? const DashboardScreen()
              : const LoginScreen(),
        ),
        routes: {
          '/dashboard': (_) => const DashboardScreen(),
          '/scanner': (_) => const ScannerScreen(),
          '/login': (_) => const LoginScreen(),
        },
      ),
    );
  }
}
