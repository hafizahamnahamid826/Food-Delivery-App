import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/Theme/AppColors.dart';
import '../../core/Widgets/primary_button.dart';
import '../app/app_route.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const Spacer(flex: 1),
                Image.asset(
                  'assets/images/mainLogo.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: size.height * 0.009),
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
                SecondaryButton(
                  label: 'Sign in',
                  color: const Color.fromARGB(255, 142, 144, 145),
                  height: isLandscape ? size.height * 0.1 : 50,
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      AppRoute.loginScreen,
                      );
                  },
                ),
                SizedBox(height: size.height * 0.01),
                PrimaryButton(
                  label: 'Get Started',
                  height: isLandscape ? size.height * 0.1 : 50,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
