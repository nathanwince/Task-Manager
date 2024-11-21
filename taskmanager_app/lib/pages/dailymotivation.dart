import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/daily_motivation/motivation_tip.dart';
import '../widgets/daily_motivation/motivation_title.dart';
import '../liked_quotes_provider.dart';

const Color kBackgroundColor = Color(0xFF03174C);
const double kSectionSpacing = 16.0;

class DailyMotivationPage extends StatelessWidget {
  final int userId;

  const DailyMotivationPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final likedQuotesProvider = context.read<LikedQuotesProvider>();
    const String currentQuote = "This is today's motivational quote!"; // Example quote

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackArrowWidget(),
            const Center(child: MotivationTitle()),
            Center(
              child: MotivationTip(
                quote: currentQuote,
                onHeartPressed: () {
                  likedQuotesProvider.addQuote(currentQuote);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(userId: userId),
    );
  }
}