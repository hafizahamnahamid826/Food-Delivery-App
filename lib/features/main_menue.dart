import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/Widgets/bottom_nav_bar.dart';
import 'package:food_delivery_app/core/Widgets/main_heading.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/Theme/AppColors.dart';
import '../../core/Widgets/app_text_field.dart';
import '../../core/services/menue_services.dart';

class MainMenue extends StatelessWidget {
  const MainMenue({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textLight,
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainHeading(),
                SizedBox(height: 20),
                FutureBuilder(
                  future: MenueServices.loadMenu(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return const Center(child: Text('Failed to load menu'));
                    }
                    final food = snapshot.data ?? [];
                    return GridView.builder(
                      itemCount: food.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,

                        mainAxisSpacing: 12,
                        mainAxisExtent: 170,
                      ),
                      itemBuilder: (context, index) {
                        return MianCard(
                          image: food[index]['image']!,
                          name: food[index]['name']!,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MianCard extends StatelessWidget {
  const MianCard({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.textLight,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withValues(alpha: 0.1),
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 2),
        child: Column(
          children: [
            CircleAvatar(backgroundImage: AssetImage(image), maxRadius: 60),
            SizedBox(height: 4),
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: AppColors.borderPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
