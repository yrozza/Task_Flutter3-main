import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildOption("Covid 19", Icons.coronavirus),
          buildOption("Doctor", Icons.person),
          buildOption("Medicine", Icons.local_pharmacy),
          buildOption("Hospital", Icons.local_hospital),
        ],
      ),
    );
  }

  Widget buildOption(String label, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade200,
          child: Icon(
            icon,
            size: 30,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }
}
