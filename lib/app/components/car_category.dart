import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarCategory extends StatelessWidget {
  const CarCategory({
    super.key,
    required this.icon,
    required this.label, required this.iconColor,
  });
  final String icon;
  final Color iconColor;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        color: const Color(0xff252420),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            blurRadius: 0,
            spreadRadius: 0,
            offset: const Offset(-1, -2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 30,
              color: iconColor,
            ),
            const SizedBox(height: 10),
            Text(
               label,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
