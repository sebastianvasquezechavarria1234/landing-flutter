import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFE6F3FF), width: 1.8),
           
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // left: avatar + name
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://th.bing.com/th/id/R.6c7f3987500fdabd76aac201586edd50?rik=tUCRKq4ojO1IoA&riu=http%3a%2f%2fwowlarevista.com%2fwp-content%2fuploads%2f2021%2f05%2fMyke-Towers-1024x1024.png&ehk=SQysB32gqNHVzJ9JdC%2fiHdoz%2fPZiX4jByj6zEtu5lE4%3d&risl=&pid=ImgRaw&r=0',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Store Name',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF2274E6), // azul más vivo
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              // right: botones
              Row(
                children: [
                  // notificación con puntito rojo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFEBEEF2), width: 1.0),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const Icon(Icons.notifications, color: Color(0xFF2274E6), size: 20),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            width: 9,
                            height: 9,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 1.6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),

                  // boton tres puntos
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFEBEEF2), width: 1.0),
                    ),
                    child: const Center(
                      child: Icon(Icons.more_vert, color: Color(0xFF2274E6), size: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
