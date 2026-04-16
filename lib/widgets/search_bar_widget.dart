import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppTheme.cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.textSoft.withOpacity(0.1)),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search_rounded, color: AppTheme.primary),
          hintText: "Buscar transacciones...",
          hintStyle: TextStyle(color: AppTheme.textSoft.withOpacity(0.6)),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
