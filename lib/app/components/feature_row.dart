import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureRow extends StatelessWidget {
  const FeatureRow({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.label,
  });
  final String icon;
  final Color iconColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              icon,
              height: 30,
              color: iconColor,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Text(
           label,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
