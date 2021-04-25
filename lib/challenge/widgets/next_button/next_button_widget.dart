import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({required String label, required VoidCallback onTap})
      : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.darkGreen;

  NextButtonWidget.purple({required String label, required VoidCallback onTap})
      : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.purple;

  NextButtonWidget.transparent(
      {required String label, required VoidCallback onTap})
      : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = Colors.transparent,
        this.fontColor = AppColors.grey,
        this.borderColor = Colors.transparent;

  NextButtonWidget.white({required String label, required VoidCallback onTap})
      : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border;

  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: borderColor),
          ),
          overlayColor: MaterialStateProperty.all(
            AppColors.grey.withOpacity(0.1),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
