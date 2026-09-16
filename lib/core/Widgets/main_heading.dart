import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/Theme/AppColors.dart';
import '../../core/Widgets/app_text_field.dart';
class MainHeading extends StatefulWidget {
  const MainHeading({super.key});

  @override
  State<MainHeading> createState() => _MainHeadingState();
}

class _MainHeadingState extends State<MainHeading> {
  final _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deliver to',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppColors.borderPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '174 Lahore, Pakistan',
                          style: GoogleFonts.inter(fontSize: 15),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    Icon(Icons.notifications_none_outlined),
                  ],
                ),
                SizedBox(height: 10,),
                textField(
                  hint: 'Search',
                  controller: _search,
                  prefixIcon: Icon(Icons.search_outlined,
                  color: AppColors.textSecondary.withValues(alpha: 0.7),),),
              ],
            );
  }
}