import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/Theme/AppColors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/mainLogo.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 3),
              Text(
                'BURGERLICIOUS',
                style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  height: 0.8,
                ),
              ),
              // SizedBox(height: 0,),
              Text(
                'We make burger to die for',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
