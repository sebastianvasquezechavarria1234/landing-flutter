import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'models/transaction_model.dart';
import 'widgets/custom_nav_bar.dart';
import 'widgets/balance_card.dart';
import 'widgets/transaction_item.dart';
import 'widgets/add_transaction_button.dart';
import 'widgets/custom_bottom_bar.dart';
import 'widgets/search_bar_widget.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  final List<TransactionModel> transactions = [
    TransactionModel(
      title: "Pizza Hut Delivery",
      date: "Hoy, 14:20 PM",
      amount: 391254.01,
      percentage: "1.8%",
      isPositiveChange: true,
      icon: Icons.local_pizza_rounded,
      iconBackgroundColor: const Color(0xFFF97316),
      type: TransactionType.expense,
    ),
    TransactionModel(
      title: "Samsung QLED TV",
      date: "Ayer, 10:15 AM",
      amount: 3176254.04,
      percentage: "43.6%",
      isPositiveChange: true,
      icon: Icons.tv_rounded,
      iconBackgroundColor: const Color(0xFF3B82F6),
      type: TransactionType.expense,
    ),
    TransactionModel(
      title: "Seguro de Salud",
      date: "12 Abr, 2024",
      amount: 38.01,
      percentage: "25.8%",
      isPositiveChange: false,
      icon: Icons.health_and_safety_rounded,
      iconBackgroundColor: const Color(0xFFEF4444),
      type: TransactionType.expense,
    ),
    TransactionModel(
      title: "Salario Mensual",
      date: "01 Abr, 2024",
      amount: 700000.00,
      percentage: "100%",
      isPositiveChange: true,
      icon: Icons.payments_rounded,
      iconBackgroundColor: const Color(0xFF10B981),
      type: TransactionType.income,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgSoft,
      floatingActionButton: const AddTransactionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomBar(),
      body: SafeArea(
        child: Column(
          children: [
            const CustomNavBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    const BalanceCard(
                      totalBalance: 2868000.00,
                      incomes: 700000.00,
                      spendings: 90000.00,
                    ),
                    const SizedBox(height: 24),
                    const SearchBarWidget(),
                    const SizedBox(height: 32),
                    _buildSectionHeader("Categorías populares"),
                    const SizedBox(height: 16),
                    _buildCategoriesRow(),
                    const SizedBox(height: 32),
                    _buildSectionHeader("Transacciones recientes", showViewAll: true),
                    const SizedBox(height: 16),
                    ...transactions.map((tx) => TransactionItem(transaction: tx)),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, {bool showViewAll = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppTheme.textMain,
          ),
        ),
        if (showViewAll)
          TextButton(
            onPressed: () {},
            child: const Text(
              "Ver todo",
              style: TextStyle(
                color: AppTheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildCategoriesRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          _buildCategoryChip("🍕 Comida", true),
          _buildCategoryChip("💻 Tech", false),
          _buildCategoryChip("🏥 Salud", false),
          _buildCategoryChip("🚗 Viajes", false),
          _buildCategoryChip("🎮 Ocio", false),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.primary : AppTheme.cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? AppTheme.primary : AppTheme.textSoft.withOpacity(0.1),
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: AppTheme.primary.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                )
              ]
            : null,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : AppTheme.textSoft,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
        ),
      ),
    );
  }
}
