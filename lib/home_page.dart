import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Management System'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            menuCard(
              context,
              Icons.dashboard,
              'Dashboard',
              '/dashboard',
              Colors.blue,
            ),
            menuCard(context, Icons.add, 'Add', '/add', Colors.red),
            menuCard(context, Icons.update, 'Update', '/update', Colors.green),
            menuCard(
              context,
              Icons.logout,
              'Logout',
              '/',
              Colors.grey,
              isLogout: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget menuCard(
    BuildContext context,
    IconData icon,
    String label,
    String routeName,
    Color color, {
    bool isLogout = false,
  }) {
    return GestureDetector(
      onTap: () {
        if (isLogout) {
          Navigator.pushReplacementNamed(context, routeName);
        } else {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Card(
        elevation: 4,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 36, color: color),
              SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
