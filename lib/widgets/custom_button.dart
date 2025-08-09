
// import 'package:flutter/material.dart';
// import 'package:scanner/core/constants/colors.dart';
// import 'package:scanner/core/constants/dimens.dart';
// import 'package:scanner/core/constants/taphandler.dart';

// class CustomElevatedBtn extends StatelessWidget {
//   const CustomElevatedBtn({
//     super.key,
//     required this.height,
//     required this.width,
//     required this.child,
//     this.onTap,
//     this.isEnabled = true,
//   });
//   final double height;
//   final double width;
//   final Widget child;
//   final VoidCallback? onTap;
//   final bool isEnabled;
//   @override
//   Widget build(BuildContext context) {
//     return TapHandler(
//       onTap: isEnabled ? onTap : null,
//       child: Container(
//         height: height,
//         width: width,
//         decoration: BoxDecoration(
//           color:
//               isEnabled
//                   ? null
//                   : AppColors.greyColor.withAlpha((0.5 * 255).toInt()),
//           gradient:
//               isEnabled
//                   ? const LinearGradient(
//                     colors: [AppColors.secondaryColor, AppColors.primaryColor],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   )
//                   : null,
//           borderRadius: BorderRadius.circular(Dimens.twelve),
//         ),
//         child: Center(child: child),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   final String title;
//   final VoidCallback onPressed;
//   final bool isLoading;

//   const CustomButton({
//     Key? key,
//     required this.title,
//     required this.onPressed,
//     this.isLoading = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Color(0xFFDBF941),
//         padding: const EdgeInsets.symmetric(vertical: 14),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//       onPressed: isLoading ? null : onPressed,
//       child: isLoading
//           ? const CircularProgressIndicator(color: Colors.white)
//           : 
//           Text(
//               title,
//               style: const TextStyle(color: Colors.white, fontSize: 16),
//             ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:scanner/core/constants/colors.dart';
import 'package:scanner/core/constants/dimens.dart';
import 'package:scanner/core/constants/taphandler.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    this.onTap,
    this.isEnabled = true,
    this.isLoading = false,
  });

  final double height;
  final double width;
  final Widget child;
  final VoidCallback? onTap;
  final bool isEnabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TapHandler(
      onTap: isEnabled && !isLoading ? onTap : null,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: isEnabled
              ? null
              : AppColors.greyColor.withAlpha((0.5 * 255).toInt()),
          gradient: isEnabled
              ? const LinearGradient(
                  colors: [AppColors.secondaryColor, AppColors.primaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
          borderRadius: BorderRadius.circular(Dimens.twelve),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : child,
        ),
      ),
    );
  }
}

