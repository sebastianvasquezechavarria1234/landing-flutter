import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: AppTheme.cardBg,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://th.bing.com/th/id/R.6c7f3987500fdabd76aac201586edd50?rik=tUCRKq4ojO1IoA&riu=http%3a%2f%2fwowlarevista.com%2fwp-content%2fuploads%2f2021%2f05%2fMyke-Towers-1024x1024.png&ehk=SQysB32gqNHVzJ9JdC%2fiHdoz%2fPZiX4jByj6zEtu5lE4%3d&risl=&pid=ImgRaw&r=0',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "LikeMyke",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primary,
                    ),
                  ),
                  Text(
                    "ID: #84b44a4f",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSoft,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              _buildIconButton(Icons.notifications_outlined, hasNotification: true),
              const SizedBox(width: 12),
              _buildIconButton(Icons.search_rounded),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {bool hasNotification = false}) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppTheme.bgSoft,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black.withOpacity(0.05)),
          ),
          child: Icon(icon, color: AppTheme.primary, size: 24),
        ),
        if (hasNotification)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: AppTheme.accentRed,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
      ],
    );
  }
}
