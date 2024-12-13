import 'package:hack_town_front/pages/main_pages/user_profile_page.dart';
import 'package:hack_town_front/widgets/route_buttons.dart';
import 'package:easy_localization/easy_localization.dart';
import '/widgets/bottom_navigation_panel.dart';
import '/widgets/navigation_panel.dart';
import 'package:flutter/material.dart';

// Route page
class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < constraints.maxHeight) {
          return const MobileRoutePage();
        } else {
          return const DesktopRoutePage();
        }
      },
    );
  }
}

// Route Page Desktop
class DesktopRoutePage extends StatefulWidget {
  const DesktopRoutePage({super.key});

  @override
  State<DesktopRoutePage> createState() => _DesktopRoutePageState();
}

class _DesktopRoutePageState extends State<DesktopRoutePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          // Navigation panel for Desktop 
          const NavigationPanel(),
          // Main content
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("route_page.choose".tr(),
                textAlign: 
                TextAlign.center, 
                style: const TextStyle( 
                  fontSize: 24, 
                ),
              ),
                const RouteButtons(),
              ],
            ),
          ),
          // Back button
          Positioned(
            left: 70,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 45,
            ),
          ),
          // User profile button
          Positioned(
            right: 0,
            child: IconButton(
              icon: Icon(Icons.account_circle_outlined, color: Theme.of(context).iconTheme.color),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const UserProfilePage()),
                );
              },
              iconSize: 45,
            ),
          ),
        ],
      ),
    );
  }
}

// Route Page Mobile
class MobileRoutePage extends StatefulWidget {
  const MobileRoutePage({super.key});

  @override
  State<MobileRoutePage> createState() => _MobileRoutePageState();
}

class _MobileRoutePageState extends State<MobileRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RouteButtons(),
              ],
            ),
          ),
          // Back button
          Positioned(
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 35,
            ),
          ),
          // User profile button
          Positioned(
            right: 0,
            child: IconButton(
              icon: Icon(Icons.account_circle_outlined, color: Theme.of(context).iconTheme.color),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const UserProfilePage()),
                );
              },
              iconSize: 35,
            ),
          ),
        ],
      ),
      // Navigation panel for Mobile
      bottomNavigationBar: const BottomNavigationPanel(),
    );
  }
}