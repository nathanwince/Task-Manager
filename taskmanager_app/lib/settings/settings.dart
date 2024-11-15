import 'package:flutter/material.dart';
import 'widgets/NavigationBar.dart';
import 'widgets/SupportContainer.dart';
import 'widgets/Header.dart';
import 'widgets/SettingsOption.dart';
import 'widgets/logout_button.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF03174C)),
          child: Stack(
            children: [
              // Background visual design
              Positioned(
                left: 518.64,
                top: 234.80,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(-2.50),
                  child: Container(
                    width: 497.96,
                    height: 292.82,
                  ),
                ),
              ),
              // Navigation Bar Section
              Positioned(
                left: 0,
                top: 861,
                child: NavigationBarWidget(),
              ),
              // Support Section
              Positioned(
                left: 19,
                top: 480,
                child: SupportContainerWidget(),
              ),
              // Header Section
              Positioned(
                left: 18,
                top: 184,
                child: HeaderWidget(),
              ),
              // Settings Options
              Positioned(
                left: 41,
                top: 20,
                child: SettingsOptionWidget(
                  label: 'Profile',
                  topDivider: false,
                ),
              ),
              Positioned(
                left: 41,
                top: 77,
                child: SettingsOptionWidget(
                  label: 'Notifications',
                ),
              ),
              Positioned(
                left: 41,
                top: 125,
                child: SettingsOptionWidget(
                  label: 'Privacy',
                ),
              ),
              Positioned(
                left: 41,
                top: 176,
                child: SettingsOptionWidget(
                  label: 'Accessibility',
                ),
              ),
              // Logout Button
              Positioned(
                left: 20,
                top: 716,
                child: LogoutButtonWidget(),
              ),
              // Title
              Positioned(
                left: 67,
                top: 51,
                child: SizedBox(
                  width: 296,
                  height: 82,
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Color(0xFFFF5151),
                      fontSize: 70,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      height: 0.01,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}