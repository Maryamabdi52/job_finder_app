import 'package:flutter/material.dart';
import '../screens/contact_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.work,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Job Finder',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          ExpansionTile(
            leading: const Icon(Icons.visibility),
            title: const Text('Vision'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'To become the leading platform connecting talented individuals with their dream jobs, fostering career growth and professional development worldwide.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.assignment),
            title: const Text('Mission'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'To provide an innovative and user-friendly platform that simplifies the job search process, while ensuring quality opportunities and meaningful connections between employers and job seekers.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.pop(context); // Close drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContactScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
