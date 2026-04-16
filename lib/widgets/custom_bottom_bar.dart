import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home_rounded, true),
          _buildNavItem(Icons.bar_chart_rounded, false),
          const SizedBox(width: 40), // Espacio para el FAB central si se desea
          _buildNavItem(Icons.wallet_rounded, false),
          _buildNavItem(Icons.person_rounded, false),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, bool isSelected) {
    return Icon(
      icon,
      color: isSelected ? Colors.white : Colors.white.withOpacity(0.4),
      size: 28,
    );
  }
}
