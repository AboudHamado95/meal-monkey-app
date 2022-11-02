import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({required String hintText, required padding, Key? key})
      : _hintText = hintText,
        _padding = padding,
        super(key: key);

  final String _hintText;
  final double _padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const ShapeDecoration(
        color: AppColors.placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: const TextStyle(
            color: AppColors.placeholder,
          ),
          contentPadding: EdgeInsets.all(_padding),
        ),
      ),
    );
  }
}