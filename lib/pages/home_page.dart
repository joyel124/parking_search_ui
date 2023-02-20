import 'package:flutter/material.dart';
import 'package:parking_search_ui/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 0.40 * MediaQuery.of(context).size.height,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kSecondaryColor,
                    kPrimaryColor,
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Parking Search",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              "24 C°",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Image.asset(
                              'assets/images/cloudy.png',
                              height: 24.0,
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 22),
                      constraints: BoxConstraints(
                        maxWidth: 0.7 * MediaQuery.of(context).size.width,
                      ),
                      child: const Text(
                        "Let's find a parking place for you",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.2),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: kTertiaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
