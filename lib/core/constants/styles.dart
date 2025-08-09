// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:scanner/core/constants/colors.dart';
import 'package:scanner/core/constants/dimens.dart';

/// A chunk of styles used in the application.
/// Will be ignored for test since all are static values and would not change.
abstract class Styles {
  static String? fontFamilyRegular = 'Causten';
  static String? fontFamilyBold = 'Causten-Bold';
  static String? fontFamilySemiBold = 'Causten-SemiBold';
  static String? fontFamilyMedium = 'Causten-Medium';
  static String? fontFamilyNewake = 'Newake';

  static TextStyle greyMedium10 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.ten,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle whiteRegular12 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
  );
  static TextStyle flChart10 = TextStyle(
    color: AppColors.color202020,
    fontSize: Dimens.ten,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle primaryText12 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackRegular12 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
  );
  static TextStyle blackRegular11 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.eleven,
    fontFamily: fontFamilyRegular,
  );
  static TextStyle greyText10 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.ten,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle greyText12 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle greyRegular12 = TextStyle(
    color: AppColors.borderGreyColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle greyRegular10 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.ten,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle greyRegular13 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle greyRegular14 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle greyRegular15 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle greyMedium12 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle greyMedium15 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyMedium,
  );
  static TextStyle greyMedium14 = TextStyle(
    color: AppColors.greyColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyMedium,
  );
  static TextStyle darkGreyRegular12 = TextStyle(
    color: AppColors.darkGreyColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle blackSemiBold12 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackSemiBold22 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.twentyTwo,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackSemiBold24 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.twentyFour,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackMedium12 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle blueMedium12 = TextStyle(
    color: AppColors.blueColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyMedium,
  );
  static TextStyle redMedium12 = TextStyle(
    color: AppColors.redColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle blueMedium14 = TextStyle(
    color: AppColors.blueColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle primaryRegular13 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle primaryRegularUnderLine13 = TextStyle(
    decoration: TextDecoration.underline,
    color: AppColors.primaryColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle whiteRegular13 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle whiteSemiBold15 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle whiteSemiBold16 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle whiteSemiBold18 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle whiteSemiBold22 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.twentyTwo,
    fontFamily: fontFamilyBold,
  );

  static TextStyle whiteSemiBold28 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.twentyEight,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle whiteBold24 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.twentyFour,
    fontFamily: fontFamilyBold,
  );

  static TextStyle whiteMedium13 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle whiteMedium15 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle blackRegular13 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle blackSemiBold13 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackSemiBold14 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackRegular14 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle primaryMedium12 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle primaryMedium13 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle primaryMediumUnderLine13 = TextStyle(
    decoration: TextDecoration.underline,
    color: AppColors.primaryColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle primaryMedium14 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle primaryMedium15 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle darkGreyRegular14 = TextStyle(
    color: AppColors.darkGreyColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle darkGreySemiBold12 = TextStyle(
    color: AppColors.darkGreyColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle darkGreySemiBold14 = TextStyle(
    color: AppColors.darkGreyColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle primarySemiBold15 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilySemiBold,
  );
  static TextStyle primarySemiBold16 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamilySemiBold,
  );
  static TextStyle primarySemiBold14 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilySemiBold,
  );
  static TextStyle primarySemiBold12 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackMedium14 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle blackBold14 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyBold,
  );

  static TextStyle blackBold16 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamilyBold,
  );

  static TextStyle blackMedium15 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle cavalryMedium17 = TextStyle(
    color: AppColors.cavalry,
    fontSize: Dimens.seventeen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle cavalryMedium24 = TextStyle(
    color: AppColors.cavalry,
    fontSize: Dimens.twentyFour,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle cavalryRegular15 = TextStyle(
    color: AppColors.cavalry,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyRegular,
  );
  static TextStyle cavalryRegular20 = TextStyle(
    color: AppColors.cavalry,
    fontSize: Dimens.twenty,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle cavalrySemiBold20 = TextStyle(
    color: AppColors.cavalry,
    fontSize: Dimens.twenty,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackSemiBold15 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackSemiBold18 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackBold15 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyBold,
  );

  static TextStyle blackRegular15 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle blackMedium17 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.seventeen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle blackMedium18 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyMedium,
  );

  static TextStyle blackSemiBold17 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.seventeen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackSemiBold16 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle blackBold20 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.twenty,
    fontFamily: fontFamilyBold,
  );

  static TextStyle blackBold18 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyBold,
  );

  static TextStyle purpleSemiBold16 = TextStyle(
    color: const Color(0xFF4A148C),
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle purpleBold18 = TextStyle(
    color: const Color(0xFF4A148C),
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyBold,
  );

  static TextStyle redRegular12 = TextStyle(
    color: AppColors.redColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle redRegular14 = TextStyle(
    color: AppColors.redColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle redSemiBold15 = TextStyle(
    color: AppColors.redColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilySemiBold,
  );

  static TextStyle green14 = TextStyle(
    color: AppColors.greenColor,
    fontSize: Dimens.fifteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle green12 = TextStyle(
    color: AppColors.greenColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle redColorOnly = const TextStyle(color: AppColors.redColor);

  static TextStyle color808080Only = TextStyle(
    color: AppColors.color808080,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.twelve,
  );

  static TextStyle color57585A = TextStyle(
    color: AppColors.color57585A,
    fontSize: Dimens.ten,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );

  static TextStyle black18w600 = TextStyle(
    color: AppColors.color202020,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w600,
  );

  static TextStyle black16w600 = TextStyle(
    color: AppColors.color202020,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w600,
  );

  static TextStyle black18w400 = TextStyle(
    color: AppColors.color202020,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle black14w400 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle black014w400 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle black14w500 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );
  static TextStyle black12w400 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle black14w600 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w600,
  );

  static TextStyle primary14w600 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w600,
  );

  static TextStyle primary13w500 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );

  static TextStyle white13w500 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.thirteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );

  static TextStyle primary12w500 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );

  static TextStyle color57585A14w400 = TextStyle(
    color: AppColors.color57585A,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle color57585A12w400 = TextStyle(
    color: AppColors.color57585A,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle color80808014w600 = TextStyle(
    color: AppColors.color808080,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w600,
  );

  static TextStyle yellowRegular14 = TextStyle(
    color: AppColors.yellowColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
  );

  static TextStyle yellowRegular12 = TextStyle(
    color: AppColors.yellowColor,
    fontSize: Dimens.twelve,
    fontFamily: fontFamilyRegular,
  );

  // White Text Styles
  static TextStyle white14w400 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle white14w500 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );

  static TextStyle white14w600 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.fourteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w600,
  );

  static TextStyle white16w400 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle white16w500 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );

  static TextStyle white16w600 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.sixteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w600,
  );

  static TextStyle white18w400 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w400,
  );

  static TextStyle white18w500 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );

  static TextStyle white18w600 = TextStyle(
    color: AppColors.whiteColor,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w600,
  );

  // Black Text Styles

  static TextStyle black18w500 = TextStyle(
    color: AppColors.blackColor,
    fontSize: Dimens.eighteen,
    fontFamily: fontFamilyRegular,
    fontWeight: FontWeight.w500,
  );
}