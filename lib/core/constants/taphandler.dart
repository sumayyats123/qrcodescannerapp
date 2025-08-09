// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:scanner/core/constants/colors.dart';
import 'package:scanner/core/constants/dimens.dart';

///Tap handler widget that provides tap and long-press handling for its child.
class TapHandler extends StatelessWidget {
  const TapHandler({
    Key? key,
    this.onTap,
    this.onLongPress,
    this.behavior,
    required this.child,
  }) : _isInkWell = false,
       borderRadius = BorderRadius.zero,
       super(key: key);

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final HitTestBehavior? behavior;
  final Widget child;
  final bool _isInkWell;
  final BorderRadius? borderRadius;

  TapHandler.ripple({
    Key? key,
    this.onTap,
    this.onLongPress,
    this.behavior,
    required this.child,
    this.borderRadius,
  }) : _isInkWell = true,
       super(key: key);

  BorderRadius get _borderRadius =>
      borderRadius ?? BorderRadius.circular(Dimens.four);

  @override
  Widget build(BuildContext context) =>
      _isInkWell
          ? InkWell(
            onTap: onTap,
            highlightColor: AppColors.transparent,
            splashFactory: NoSplash.splashFactory,
            splashColor: AppColors.transparent,
            enableFeedback: true,
            borderRadius: _borderRadius,
            onLongPress: onLongPress,
            child: child,
          )
          : GestureDetector(
            onTap: onTap,
            onLongPress: onLongPress,
            child: child,
            behavior: behavior ?? HitTestBehavior.translucent,
          );
}