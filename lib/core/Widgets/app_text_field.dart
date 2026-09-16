import 'package:flutter/material.dart';
import '../../core/Theme/AppColors.dart';
import 'package:google_fonts/google_fonts.dart';
class textField extends StatelessWidget {
  const textField({
    super.key,
    required this.hint,
    required this.controller,
    this.label,
    this.obsecureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
  });
  final String hint;
  final TextEditingController controller;
  final String? label;
  final bool obsecureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        obscureText: obsecureText,
        keyboardType: keyboardType,
        
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 14,horizontal: 12),
          hintText: hint,
          hintStyle: GoogleFonts.inter(
            fontSize: 14,
            color: AppColors.textSecondary,
          ),
          filled: true,
          fillColor: AppColors.backgroundSecondary,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(color: AppColors.textSecondary, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(
              color: AppColors.backgroundSecondary,
              width: 1,
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}