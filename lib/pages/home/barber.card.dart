import 'package:flutter/material.dart';

class BarberCard extends StatelessWidget {
  final String name;
  final String specialization;
  final String imageUrl;
  final VoidCallback onTap;
  const BarberCard(
      {super.key,
      required this.name,
      required this.specialization,
      required this.imageUrl,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Barber Profile Image
              CircleAvatar(
                radius: 40,
                // backgroundImage: NetworkImage(imageUrl),
              ),
              SizedBox(width: 16),
              // Barber Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      specialization,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 8),
                    // Optional: Add rating, reviews, etc.
                    Text('rate')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
