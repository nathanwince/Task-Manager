import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Add this import
import 'package:taskmanager_app/pages/login.dart';
import 'package:taskmanager_app/pages/signup.dart';
import 'package:taskmanager_app/pages/splashpage.dart';
import 'package:taskmanager_app/pages/onboarding_1.dart';
import 'package:taskmanager_app/pages/onboarding_2.dart';
import 'package:taskmanager_app/pages/onboarding_3.dart';
import 'package:taskmanager_app/pages/homepage.dart';
import 'package:taskmanager_app/pages/calendar.dart';
import 'package:taskmanager_app/pages/bookmarks.dart';
import 'package:taskmanager_app/pages/addtask.dart';
import 'package:taskmanager_app/pages/dailymotivation.dart';
import 'package:taskmanager_app/pages/notes.dart';
import 'package:taskmanager_app/pages/weekly_summary.dart';
import 'package:taskmanager_app/pages/todays_task.dart';
import 'package:taskmanager_app/pages/profile.dart';
import 'package:taskmanager_app/providers/liked_quotes_provider.dart'; // Import your provider

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LikedQuotesProvider()), // Wrap with Provider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 430,
              maxHeight: 932,
            ),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Roll Call App',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily: 'Nunito',
              ),
              initialRoute: '/login',
              routes: _getStaticRoutes(),
              onGenerateRoute: _generateDynamicRoutes,
            ),
          ),
        );
      },
    );
  }

  /// Static routes for pages that don’t require arguments.
  Map<String, WidgetBuilder> _getStaticRoutes() {
    return {
      '/login': (context) => const LoginPage(),
      '/signup': (context) => const SignUpPage(),
      '/splash': (context) => const SplashPage(),
      '/onboarding1': (context) => const Onboarding1(),
      '/onboarding2': (context) => const Onboarding2(),
      '/onboarding3': (context) => const Onboarding3(),
      '/weeklysummary': (context) => const WeeklySummaryPage(),
      '/notes': (context) => const NotesPage(),
    };
  }

  /// Dynamic routes for pages that require arguments.
  Route<dynamic>? _generateDynamicRoutes(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case '/home':
        return _buildRoute(HomePage(userId: arguments as int));
      case '/todaystask':
        return _buildRoute(TodaysTaskPage(userId: arguments as int));
      case '/profile':
        return _buildRoute(ProfilePage(userId: arguments as int));
      case '/calendar':
        return _buildRoute(CalendarPage(userId: arguments as int));
      case '/bookmarks':
        return _buildRoute(BookmarksPage(userId: arguments as int));
      case '/addtask':
        return _buildRoute(AddTaskPage(userId: arguments as int));
      case '/dailymotivation':
        return _buildRoute(DailyMotivationPage(userId: arguments as int));
      default:
        return null; // Fallback for unknown routes
    }
  }

  /// Helper method to simplify route generation.
  MaterialPageRoute _buildRoute(Widget page) {
    return MaterialPageRoute(builder: (context) => page);
  }
}
