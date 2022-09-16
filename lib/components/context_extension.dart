import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
}

extension SizedBoxHeight on BuildContext {
  double get sizedBoxHeightLow => height * 0.02;
  double get sizedBoxHeightHigh => height * 0.07;
  double get sizedBoxAltogicLogoHeight => height * 0.05;
  double get sizedBoxConnectionButtonLogoHeight => height * 0.03;
}

extension SizedBoxWidth on BuildContext {
  double get sizedBoxWidthLow => width * 0.05;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get mainPadding => EdgeInsets.all(width * 0.05);
  EdgeInsets get paddingLow => EdgeInsets.all(width * 0.03);
  EdgeInsets get whiteBackgroundLoginPadding => EdgeInsets.only(top: height * 0.10, left: width * 0.03, right: width * 0.03);
  EdgeInsets get whiteBackgroundNewPasswordPadding => EdgeInsets.only(top: height * 0.30, left: width * 0.03, right: width * 0.03);
  EdgeInsets get whiteBackgroundMainPadding => EdgeInsets.only(top: height * 0.20, left: width * 0.03, right: width * 0.03);
  EdgeInsets get whiteBackgroundCleanerDetailPadding => EdgeInsets.only(top: height * 0.30, left: width * 0.03, right: width * 0.03);
  EdgeInsets get cleanerDetailAvatarPadding => EdgeInsets.only(top: height * 0.20);
  EdgeInsets get cleanerDetailContentPadding => EdgeInsets.only(top: height * 0.12, left: width * 0.03, right: width * 0.03);
}
