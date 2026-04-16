import 'package:flutter/material.dart';
import '../models/transaction_model.dart';
import '../theme/app_theme.dart';

class TransactionDetailSheet extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionDetailSheet({super.key, required this.transaction});

  static void show(BuildContext context, TransactionModel transaction) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => TransactionDetailSheet(transaction: transaction),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.cardBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppTheme.textSoft.withOpacity(0.2),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: transaction.iconBackgroundColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Icon(transaction.icon, color: transaction.iconBackgroundColor, size: 40),
          ),
          const SizedBox(height: 16),
          Text(
            transaction.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppTheme.textMain),
          ),
          Text(
            transaction.date,
            style: const TextStyle(color: AppTheme.textSoft, fontSize: 16),
          ),
          const SizedBox(height: 32),
          Text(
            "${transaction.type == TransactionType.income ? '+' : '-'} \$${transaction.amount.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: transaction.type == TransactionType.income ? AppTheme.accentGreen : AppTheme.textMain,
            ),
          ),
          const SizedBox(height: 32),
          _buildDetailRow("ID de Transacción", "#TRX-948271"),
          _buildDetailRow("Método de Pago", "Tarjeta Débito (**** 4291)"),
          _buildDetailRow("Estado", "Completado", isStatus: true),
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: BorderRadius.circular(16),
                elevation: 0,
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("Descargar Recibo", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isStatus = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: AppTheme.textSoft, fontSize: 14)),
          if (isStatus)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: AppTheme.accentGreen.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "Completado",
                style: TextStyle(color: AppTheme.accentGreen, fontWeight: FontWeight.bold, fontSize: 12),
              ),
            )
          else
            Text(value, style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.textMain, fontSize: 14)),
        ],
      ),
    );
  }
}
