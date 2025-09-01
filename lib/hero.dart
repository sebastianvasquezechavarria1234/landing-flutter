import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // tarjeta azul principal
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 80), // espacio inferior para solapado
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: const LinearGradient(
                colors: [Color(0xFF3B82F6), Color(0xFF2563EB)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: const [
                BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08), blurRadius: 8, offset: Offset(0, 4)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your budget',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 8),

                // Monto grande con formato parecido a la imagen
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      '\$ ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '2.868.000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8,
                      ),
                    ),
                    Text(
                      ',00',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                // tarjeta interna con incomes y spending
                Container(
                  width: double.infinity,
                 
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      _infoRow(
                        icon: Icons.arrow_upward,
                        title: 'Incomes',
                        amount: '\$ 700.000,00',
                        subtitle: 'From January 1 to January 31',
                        iconBg: const Color(0xFFD9FCE6),
                        iconColor: Colors.green,
                      ),
                      const SizedBox(height: 10),
                      _infoRow(
                        icon: Icons.arrow_downward,
                        title: 'Spending',
                        amount: '\$ 90.000,00',
                        subtitle: 'From January 1 to January 31',
                        iconBg: const Color(0xFFFFE6E6),
                        iconColor: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // bloque blanco solapado con pestañas
          Positioned(
            bottom: -28,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: width - 32,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.06), blurRadius: 6, offset: Offset(0, 3)),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Categories',
                          style: TextStyle(
                            color: Color(0xFF1F2937),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(width: 1, height: 28, color: const Color(0xFFF1F5F9)),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Recent transaction',
                          style: TextStyle(
                            color: Color(0xFF94A3B8),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // helper para cada fila de info (Incomes / Spending)
  Widget _infoRow({
    required IconData icon,
    required String title,
    required String amount,
    required String subtitle,
    required Color iconBg,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // icono con fondo
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
          const SizedBox(width: 12),

          // textos
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white.withOpacity(0.75), fontSize: 11),
                ),
              ],
            ),
          ),

          // amount + chevron
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
              const SizedBox(height: 6),
              Container(
                width: 32,
                height: 28,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.chevron_right, color: Colors.white, size: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
