
// screens/dashboard_screen.dart
 import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';
 import '../providers/event_provider.dart';
 import '../providers/auth_provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<EventProvider>(context);

    return SafeArea (
      child: Scaffold(
        backgroundColor:Colors.black,
        appBar: AppBar(
          title: const Text(
            'Dashboard',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor:Color(0xFFDBF941),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.black),
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false).logout();
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 2,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              _buildStatsGrid(context, event),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDBF941),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/scanner'),
                  child: const Text(
                    'Start Scanning',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatsGrid(BuildContext context, EventProvider event) {
    final stats = [
      {'title': 'Bookings', 'value': event.totalBookings.toString(), 'icon': Icons.event_available},
      {'title': 'Attended', 'value': event.attended.toString(), 'icon': Icons.check_circle},
      {'title': 'Remaining', 'value': event.remaining.toString(), 'icon': Icons.access_time},
      {'title': 'Earnings', 'value': '₹${event.earnings}', 'icon': Icons.currency_rupee},
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: stats.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return _buildStatCard(
          stats[index]['title'] as String,
          stats[index]['value'] as String,
          stats[index]['icon'] as IconData,
        );
      },
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return GestureDetector(
      onTapDown: (_) {},
      child: AnimatedContainer(
        duration:  Duration(milliseconds: 200),
        padding: const EdgeInsets.all(16),
        decoration:  BoxDecoration(
  color: Color(0xFFDBF941),


          
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFB2B2B2).withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: Colors.black),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
