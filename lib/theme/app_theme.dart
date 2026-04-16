import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Paleta de Colores Premium
  static const Color primary = Color(0xFF0F766E); // Teal 700
  static const Color primaryDark = Color(0xFF134E4A); // Teal 900
  static const Color bgSoft = Color(0xFFF8FAFC); // Slate 50
  static const Color cardBg = Colors.white;
  static const Color textMain = Color(0xFF0F172A); // Slate 900
  static const Color textSoft = Color(0xFF64748B); // Slate 500
  static const Color accentGreen = Color(0xFF10B981); // Emerald 500
  static const Color accentRed = Color(0xFFEF4444); // Red 500
  
  // Gradientes
  static const LinearGradient mainGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
  );

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        background: bgSoft,
      ),
      textTheme: GoogleFonts.outfitTextTheme().copyWith(
        displayLarge: GoogleFonts.outfit(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: textMain,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 14,
          color: textSoft,
        ),
      ),
    );
  }
}
