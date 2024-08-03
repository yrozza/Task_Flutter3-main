import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String distance;
  final double rating;
  final int reviews;
  final String openingTime;
  final String imagePath; // Use imagePath instead of imageUrl

  const DoctorCard({
    Key? key,
    required this.name,
    required this.specialty,
    required this.distance,
    required this.rating,
    required this.reviews,
    required this.openingTime,
    required this.imagePath, // Use imagePath instead of imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imagePath), // Load image from assets
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        specialty,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.grey, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      distance,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      "$rating ($reviews Reviews)",
                      style: const TextStyle(color: Colors.orange, fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.access_time, color: Colors.blue, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      "Open at $openingTime",
                      style: const TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
