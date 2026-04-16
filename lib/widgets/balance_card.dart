import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class BalanceCard extends StatelessWidget {
  final double totalBalance;
  final double incomes;
  final double spendings;

  const BalanceCard({
    super.key,
    required this.totalBalance,
    required this.incomes,
    required this.spendings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Balance Total",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(
            "\$ ${totalBalance.toStringAsFixed(0)}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
              letterSpacing: -1,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              _buildFinanceIndicator(
                label: "Ingresos",
                amount: incomes,
                icon: Icons.arrow_upward_rounded,
                color: AppTheme.accentGreen,
              ),
              const SizedBox(width: 24),
              _buildFinanceIndicator(
                label: "Gastos",
                amount: spendings,
                icon: Icons.arrow_downward_rounded,
                color: AppTheme.accentRed,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFinanceIndicator({
    required String label,
    required double amount,
    required IconData icon,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 18)),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.white60, fontSize: 12),
                ),
                Text(
                  "\$${amount.toStringAsFixed(0)}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
