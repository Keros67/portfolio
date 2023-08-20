import 'package:flutter/material.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("images/profil.jpg"),
          ),
          const SizedBox(height: 20),
          const Text(
            'TOUKAM Sylvain',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Développeur Web et Mobile, Flutter',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email),
              SizedBox(width: 10),
              Text('craig03@hotmail.fr'),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              SizedBox(width: 10),
              Text('06 78 16 94 74'),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Gérer l'action du bouton
            },
            child: const Text('Contacter'),
          ),
        ],
      ),
    );
  }
}
