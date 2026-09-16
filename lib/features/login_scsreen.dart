import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/Widgets/primary_button.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/Theme/AppColors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../app/app_route.dart';
import '../../core/Widgets/app_text_field.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obsecure = true;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Image.asset(
                    'assets/images/burger.png',
                    height: 120,
                    width: 150,
                  ),
                  Text(
                    '   Sign in ',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.8,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Sign in to your account via Email',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  textField(
                    hint: 'Enter Your Email',
                    controller: _emailController,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColors.textSecondary.withValues(alpha: 0.7),
                    ),
                  ),
                  SizedBox(height: 20),
                  textField(
                    hint: 'Enter your password',
                    controller: _passwordController,
                    obsecureText: _obsecure,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.textSecondary.withValues(alpha: 0.7),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() => _obsecure = !_obsecure);
                      },
                      child: Icon(
                        _obsecure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.textSecondary.withValues(alpha: 0.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: rememberMe,
                            activeColor: Colors.black,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            visualDensity: const VisualDensity(
                              horizontal: -4,
                              vertical: -4,
                            ),
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                          ),
                          SizedBox(width: 3),
                          Text(
                            'Remember me',
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Forget Password?',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  PrimaryButton(
                    label: 'Sign in',
                    onPressed: () {
                      var email = _emailController.text;
                      var password = _passwordController.text;
                      Navigator.of(context).pushNamed(
                      AppRoute.mainMenue,
                      );
                    },
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 1,
                        width: 50,
                        color: AppColors.textSecondary.withValues(alpha: 0.2),
                      ),
                      Text(
                        'Sign in with social media',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 50,
                        color: AppColors.textSecondary.withValues(alpha: 0.2),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  SecondaryButton(
                    label: 'Sign in with Google',
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.green,
                      size: 18,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                  SecondaryButton(
                    label: 'Sign in with Facebook',
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 18,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member,',
                        style: GoogleFonts.inter(fontSize: 13),
                      ),
                      Text(
                        ' Create a new account',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class textField extends StatelessWidget {
//   const textField({
//     super.key,
//     required this.hint,
//     required this.controller,
//     this.label,
//     this.obsecureText = false,
//     this.suffixIcon,
//     this.prefixIcon,
//     this.keyboardType,
//   });
//   final String hint;
//   final TextEditingController controller;
//   final String? label;
//   final bool obsecureText;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//   final TextInputType? keyboardType;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: TextField(
//         controller: controller,
//         cursorColor: Colors.black,
//         obscureText: obsecureText,
//         keyboardType: keyboardType,
//         decoration: InputDecoration(
//           hintText: hint,
//           hintStyle: GoogleFonts.inter(
//             fontSize: 14,
//             color: AppColors.textSecondary,
//           ),
//           filled: true,
//           fillColor: AppColors.backgroundSecondary,
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(2),
//             borderSide: BorderSide(color: AppColors.textSecondary, width: 1),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(2),
//             borderSide: BorderSide(
//               color: AppColors.backgroundSecondary,
//               width: 1,
//             ),
//           ),
//           prefixIcon: prefixIcon,
//           suffixIcon: suffixIcon,
//         ),
//       ),
//     );
//   }
// }
