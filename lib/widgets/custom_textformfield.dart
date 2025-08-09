
// import 'package:flutter/material.dart';

// class CustomTextFormField extends StatelessWidget {
//   final TextEditingController? controller;
//   final String? hintText;
//   final bool isObscure;
//   final String? Function(String?)? validator;
//   final TextInputType? keyboardType;
//   final Widget? suffixIcon;
//   final bool readOnly;
//   final void Function()? onTap;
//   final void Function(String)? onChanged;

//   const CustomTextFormField({
//     super.key,
//     this.controller,
//     this.hintText,
//     this.isObscure = false,
//     this.validator,
//     this.keyboardType,
//     this.suffixIcon,
//     this.readOnly = false,
//     this.onTap,
//     this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       obscureText: isObscure,
//       validator: validator,
//       keyboardType: keyboardType,
//       readOnly: readOnly,
//       onTap: onTap,
//       onChanged: onChanged,
//       style: const TextStyle(color: Colors.white),
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: const TextStyle(color: Colors.white70),
//         filled: true,
//         fillColor: Colors.white12,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide.none,
//         ),
//         suffixIcon: suffixIcon,
//         contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scanner/core/constants/colors.dart';
import 'package:scanner/core/constants/dimens.dart';
import 'package:scanner/core/constants/styles.dart';
import 'package:scanner/core/constants/taphandler.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.onSuffixTap,
    this.maxLines = 1,
    this.readOnly = false,
    this.isObscure = false,
    this.onEditingComplete,
    this.labelText,
    this.textEditingController,
    this.textInputType,
    this.focusNode,
    this.validator,
    this.showUnderlineBorder = false,
    this.labelWidget,
    this.hintText,
    this.errorText,
    this.showLabelText = true,
    this.maxLength,
    this.showSuffixIcon = false,
    this.suffixWidget,
    this.onChanged,
    this.prefix,
    this.fillColor,
    this.outlineRadius,
    this.onTap,
    this.showBorder = true,
    this.inputFormatters,
    this.autofocus = false,
    this.color,
    this.borderRadius,
    this.onFieldSubmitted,
    this.initialValue,
    this.textCapitalization,
    this.minLines,
    this.hintTextStyle,
    this.height,
    this.borderColor,
    this.style,
  });
  final void Function(String)? onFieldSubmitted;
  final String? labelText;
  final String? errorText;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final VoidCallback? onSuffixTap;
  final VoidCallback? onEditingComplete;
  final bool isObscure;
  final String? hintText;
  final int? maxLines;
  final bool readOnly;
  final bool showUnderlineBorder;
  final bool showLabelText;
  final int? maxLength;
  final Widget? labelWidget;
  final bool showSuffixIcon;
  final Widget? suffixWidget;
  final Widget? prefix;
  final Color? fillColor;
  final double? outlineRadius;
  final void Function()? onTap;
  final bool showBorder;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;
  final Color? color;
  final double? borderRadius;
  final String? initialValue;
  final TextCapitalization? textCapitalization;
  final int? minLines;
  final TextStyle? hintTextStyle;
  final double? height;
  final Color? borderColor;
  final TextStyle? style;
  OutlineInputBorder outlineInputBorder({
    required Color color,
    double gapPadding = 4.0,
  }) => OutlineInputBorder(
    gapPadding: gapPadding,
    borderSide: BorderSide(width: Dimens.pointSeven, color: color),
    borderRadius: BorderRadius.circular(Dimens.twelve),
  );

  UnderlineInputBorder underlineInputBorder({required Color color}) =>
      UnderlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.twelve),
        borderSide: BorderSide(width: Dimens.one, color: color),
      );

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: color,
      borderRadius:
          borderRadius == null ? null : BorderRadius.circular(borderRadius!),
      border: borderColor != null ? Border.all(color: borderColor!) : null,
    ),
    child: SizedBox(
      height: height,
      child: TextFormField(
        minLines: minLines,
        autofocus: autofocus,
        onFieldSubmitted: onFieldSubmitted,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        onTap: onTap,
        maxLength: maxLength,
        controller: textEditingController,
        keyboardType: textInputType,
        focusNode: focusNode,
        obscureText: isObscure,
        readOnly: readOnly,
        maxLines: maxLines,
        initialValue: initialValue,

        style:
            style ??
            Styles.blackRegular15.copyWith(
              decoration: TextDecoration.none,
              color: AppColors.whiteColor,
            ),
        inputFormatters: inputFormatters,
        maxLengthEnforcement: MaxLengthEnforcement.none,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Styles.white14w400,
          filled: true,
          fillColor: AppColors.white10,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.twelve),
            borderSide: BorderSide.none,
          ),
          counter: const SizedBox.shrink(),

          errorText: errorText,
          label: labelWidget,
          errorStyle: Styles.redRegular12.copyWith(
            height: 1.3,
            overflow: TextOverflow.visible,
          ),
          errorMaxLines: 3,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: height != null ? (height! - 20) / 2 : Dimens.fifteen,
            horizontal: Dimens.fifteen,
          ),
          prefixIcon: prefix,
          suffixIcon:
              showSuffixIcon
                  ? TapHandler(
                    onTap: onSuffixTap,
                    child: suffixWidget ?? const SizedBox(),
                  )
                  : null,
          focusedBorder:
              showUnderlineBorder
                  ? underlineInputBorder(color: AppColors.primaryColor)
                  : outlineInputBorder(color: AppColors.primaryColor),
          errorBorder:
              showUnderlineBorder
                  ? underlineInputBorder(color: AppColors.redColor)
                  : outlineInputBorder(color: AppColors.redColor),
          focusedErrorBorder:
              showUnderlineBorder
                  ? underlineInputBorder(color: AppColors.redColor)
                  : outlineInputBorder(color: AppColors.redColor),
        ),
        validator: validator,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
      ),
    ),
  );
}