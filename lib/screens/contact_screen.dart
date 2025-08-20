import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Our Locations'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade800,
              Colors.blue.shade500,
              Colors.indigo.shade400,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Find Us Worldwide',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Visit our offices around the globe',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue.shade50,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 24),
                _buildOfficeCard(
                  'Global Headquarters',
                  '123 Business Street\nNew York, NY 10001',
                  '25261788990',
                  'headquarters@jobfinder.com',
                  Icons.location_city,
                  Colors.orange.shade300,
                ),
                const SizedBox(height: 16),
                _buildOfficeCard(
                  'Tech Hub',
                  '456 Innovation Drive\nSan Francisco, CA 94105',
                  '25261778987',
                  'techhub@jobfinder.com',
                  Icons.computer,
                  Colors.green.shade300,
                ),
                const SizedBox(height: 16),
                _buildOfficeCard(
                  'European Center',
                  '789 Digital Square\nLondon, UK EC1A 1BB',
                  '2526718970',
                  'europe@jobfinder.com',
                  Icons.euro,
                  Colors.purple.shade300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOfficeCard(String title, String address, String phone,
      String email, IconData icon, Color accentColor) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: accentColor.withOpacity(0.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: accentColor.withOpacity(0.2),
                        child: Icon(icon, color: accentColor, size: 25),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 30),
                  _buildContactRow(
                    Icons.location_on,
                    address,
                    accentColor,
                  ),
                  const SizedBox(height: 16),
                  _buildContactRow(
                    Icons.phone,
                    phone,
                    accentColor,
                  ),
                  const SizedBox(height: 16),
                  _buildContactRow(
                    Icons.email,
                    email,
                    accentColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String text, Color accentColor) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: accentColor,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
