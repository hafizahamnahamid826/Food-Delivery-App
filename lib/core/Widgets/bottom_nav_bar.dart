import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/Theme/AppColors.dart';
import 'package:food_delivery_app/app/app_route.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.currentIndex});
  final int currentIndex;

  static const _item = [
    (icon: Icons.home, label: 'Home'),
    (icon: Icons.search, label: 'Search'),
    (icon: Icons.list_alt, label: 'Order'),
    (icon: Icons.account_circle, label: 'Account'),
  ];
  void _onTap(BuildContext context, int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Navigator.of(
          context,
        ).pushNamedAndRemoveUntil(AppRoute.mainMenue, (r) => false);
      default:
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${_item[index].label} - comming soon')),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.textLight,
        border: Border(top: BorderSide(color: AppColors.borderPrimary.withValues(alpha: 0.3))),
      ),
      child: SafeArea(
        child: SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4,1,4,3),
            child: Row(
              children: List.generate(_item.length, (index) {
                final item = _item[index];
                final active = index == currentIndex;
            
                final color = active
                    ? AppColors.primary
                    : AppColors.borderPrimary;
            
                return Expanded(
                  child: InkWell(
                    onTap: ()=>
                    _onTap(context, index),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          item.icon,
                          color: color,
                          size: 22,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          item.label,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: active?FontWeight.w700:FontWeight.w500,
                            color:color
                          ),
                        )
                      ],
                    ),
                  ));
              }),
            ),
          ),
        ),
      ),
    );
  }
}
