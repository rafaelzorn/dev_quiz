import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 70,
              width: 70,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: 0.75,
                backgroundColor: AppColors.chartSecondary,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),
          Center(
            child: Text(
              "75%",
              style: AppTextStyles.heading,
            ),
          ),
        ],
      ),
    );
  }
}
