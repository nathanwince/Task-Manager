import 'package:flutter/material.dart';
import '../shared/navbar.dart';
import '../widgets/home_page/header.dart';
import '../widgets/home_page/date_display.dart';
import '../widgets/home_page/streak_bar_widget.dart';
import '../widgets/home_page/upcoming_task_widget.dart';
import '../widgets/home_page/check_out_grid_widget.dart';

const double kSectionSpacing = 16.0;
const double kLargeSpacing = 30.0;
const Color kBackgroundColor = Color(0xFF03174C);

class HomePage extends StatelessWidget {
  final int userId;

  const HomePage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/images/vector.png",
                  fit: BoxFit.cover,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(),
                    const SizedBox(height: kSectionSpacing),
                    _buildSection(DateDisplay()),
                    _buildSection(StreakBarWidget(userId: userId)),
                    _buildSection(UpcomingTasksWidget(userId: userId)),
                    _buildSection(const CheckOutGridWidget()),
                    const SizedBox(height: kLargeSpacing),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }

  Widget _buildSection(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          child,
          const SizedBox(height: kSectionSpacing),
        ],
      ),
    );
  }
}
