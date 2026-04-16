import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AddTransactionButton extends StatelessWidget {
  const AddTransactionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppTheme.primary, AppTheme.primaryDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: AppTheme.primary.withOpacity(0.4),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: () {},
          child: const Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}
