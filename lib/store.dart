import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 245, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Barra superior
            Container(
              decoration: BoxDecoration(color: Color(0xFF1E293B)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.06),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/e97e88a21b09b904269c2413163dd87c~tplv-tiktokx-cropcenter:1080:1080.jpeg?dr=14579&refresh_token=57977243&x-expires=1756933200&x-signature=6%2BrnrU%2BiMPuA71NRVtfLwRMNbDU%3D&t=4d5b0474&ps=13740610&shp=a5d48078&shcp=81f88b70&idc=maliva',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "LikeMyke",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF0F766E),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // campana
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF0F766E).withOpacity(0.2),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const Icon(
                                Icons.notifications,
                                color: Color(0xFF0F766E),
                              ),
                              Positioned(
                                bottom: -2,
                                right: -2,
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFEF4444),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        // tres puntitos
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF0F766E).withOpacity(0.2),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                          ),
                          child: const Icon(
                            Icons.more_vert,
                            color: Color(0xFF0F766E),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ENCABEZADO
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF1E293B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Tu presupuesto",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  const SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "\$ 2.868.000",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ",00",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Incomes
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: const Color(0xFF475569),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Color(0xFF059669),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Ingresos",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$ 700.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ",00",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Del 1 de enero al 31 de enero",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Spending
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: const Color(0xFF475569),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.arrow_downward,
                            color: Color(0xFFEF4444),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Gastos",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$ 90.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ",00",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Del 1 de enero al 31 de enero",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Categorías
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 65,
                      vertical: 13,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 241, 241, 241),
                    ),
                    child: const Text(
                      "Categorias",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Text(
                    "Transacciones recientes",
                    style: TextStyle(color: Color(0xFF64748B)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Ver todo",
                  style: TextStyle(
                    color: Color(0xFF0F766E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Card 1
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  // Icono dentro de un contenedor
                  Container(
                    width: 55,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.local_pizza,
                      color: Color(0xFF059669),
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Texto al lado
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Pizza...",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF059669).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.keyboard_arrow_up,
                                    color: Color(0xFF059669),
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '1.8%',
                                    style: TextStyle(
                                      color: Color(0xFF059669),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "+ \$2250 Today",
                          style: TextStyle(
                            color: Color(0xFF64748B),
                            fontSize: 12,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "\$ 391.254",
                                style: const TextStyle(
                                  color: Color(0xFF0F766E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ",01",
                                style: const TextStyle(
                                  color: Color(0xFF0F766E),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Card 2 - Electronics
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  // Icono dentro de un cuadro
                  Container(
                    width: 55,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.tv,
                      color: Color(0xFF059669),
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Texto y datos
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Televisor...",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF059669).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.keyboard_arrow_up,
                                    color: Color(0xFF059669),
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '43.6%',
                                    style: TextStyle(
                                      color: Color(0xFF059669),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "+ \$2250 Today",
                          style: TextStyle(
                            color: Color(0xFF64748B),
                            fontSize: 12,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "\$ 3.176.254",
                                style: const TextStyle(
                                  color: Color(0xFF0F766E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ",01",
                                style: const TextStyle(
                                  color: Color(0xFF0F766E),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Card 3 - Health
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  // Icono dentro de un cuadro
                  Container(
                    width: 55,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.health_and_safety,
                      color: Color(0xFF059669),
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Texto y datos
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Producto...",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFEF4444).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFFEF4444),
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "25.8%",
                                    style: TextStyle(
                                      color: Color(0xFFEF4444),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "\$110 Today",
                          style: TextStyle(
                            color: Color(0xFF64748B),
                            fontSize: 12,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "\$ 38",
                                style: const TextStyle(
                                  color: Color(0xFF0F766E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ",01",
                                style: const TextStyle(
                                  color: Color(0xFF0F766E),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
