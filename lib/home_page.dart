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
              icon: Icons.dashboard,
              label: 'Dashboard',
              color: Colors.blue,
              routeName: '/dashboard',
            ),
            menuCard(
              context,
              icon: Icons.add,
              label: 'Add',
              color: Colors.red,
              routeName: '/add',
            ),
            menuCard(
              context,
              icon: Icons.update,
              label: 'Update',
              color: Colors.green,
              routeName: '/update',
            ),
            menuCard(
              context,
              icon: Icons.logout,
              label: 'Logout',
              color: Colors.grey,
              routeName: '/',
              isLogout: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget menuCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required String routeName,
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
              Icon(icon, size: 36, color: color), // <-- icon dikecilkan jadi 36
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
