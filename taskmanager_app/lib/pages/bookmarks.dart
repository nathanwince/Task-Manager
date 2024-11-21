import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/bookmarks/tips.dart';

const Color kBackgroundColor = Color(0xFF03174C);
const double kSectionSpacing = 16.0;

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final likedQuotes = context.watch<LikedQuotesProvider>().likedQuotes;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackArrowWidget(),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: kSectionSpacing),
                child: Text(
                  "Bookmarks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kSectionSpacing),
              child: Tips(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSectionSpacing, vertical: 8.0),
              child: Text(
                "Liked Quotes",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSectionSpacing),
              child: likedQuotes.isEmpty
                  ? const Text(
                      "No quotes liked yet.",
                      style: TextStyle(color: Colors.white),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: likedQuotes
                          .map(
                            (quote) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                quote,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}