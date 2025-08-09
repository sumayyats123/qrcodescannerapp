// screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner/core/constants/colors.dart';
import 'package:scanner/core/constants/dimens.dart';
import 'package:scanner/core/constants/styles.dart';
import 'package:scanner/widgets/custom_button.dart';
import '../providers/event_provider.dart';
import '../providers/auth_provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<EventProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        appBar: AppBar(
          title: Text(
            'Dashboard',
            style: Styles.white18w400.copyWith(
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: AppColors.secondaryColor,
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

              CustomElevatedBtn(
                height: Dimens.fifty,
                width: double.infinity,
                onTap: () => Navigator.pushNamed(context, '/scanner'),
                child: Text(
                  'Start Scanning',
                  style: Styles.white16w500.copyWith(
                    color: AppColors.blackColor,
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
      {
        'title': 'Bookings',
        'value': event.totalBookings.toString(),
        'icon': Icons.event_available,
      },
      {
        'title': 'Attended',
        'value': event.attended.toString(),
        'icon': Icons.check_circle,
      },
      {
        'title': 'Remaining',
        'value': event.remaining.toString(),
        'icon': Icons.access_time,
      },
      {
        'title': 'Earnings',
        'value': '₹${event.earnings}',
        'icon': Icons.currency_rupee,
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white10,
        borderRadius: BorderRadius.circular(Dimens.twelve),
        border: Border.all(color: AppColors.whiteColor.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: AppColors.whiteColor),
          const SizedBox(height: 12),
          Text(title, style: Styles.white14w400),
          const SizedBox(height: 8),
          Text(
            value,
            style: Styles.white18w400.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
