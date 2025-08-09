// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/auth_provider.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     Future.delayed(const Duration(seconds: 2), () {
//       final authProvider = Provider.of<AuthProvider>(context, listen: false);

//       if (authProvider.isLoggedIn) {
//         Navigator.pushReplacementNamed(context, '/dashboard');
//       } else {
//         Navigator.pushReplacementNamed(context, '/login');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Image.asset(
//           'assets/images/splash.png', 
//           height: size.height * 0.2,
//         ),
//       ),
//       bottomNavigationBar: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ShaderMask(
//                 shaderCallback: (bounds) => const LinearGradient(
//                   colors: [
//                     Color(0xFFDBF941),
//                     Color(0xFFA7D129),
//                     Color(0xFF79B02A),
//                   ],
//                 ).createShader(bounds),
//                 child: Text(
//                   "COMPAS",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white, // Needed for shader mask
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 4),
//               const Text(
//                 "Navigate Our Way",
//                 style: TextStyle(color: Colors.white70, fontSize: 13),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      final auth = Provider.of<AuthProvider>(context, listen: false);

      if (auth.isLoggedIn) {
        Navigator.pushReplacementNamed(context, '/dashboard');
      } else {
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/logo (1).png',
           height: size.height * 0.25,
         
        ),
      ),
    );
  }
}
