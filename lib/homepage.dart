import 'package:flutter/material.dart';
import 'package:select/colors.dart';
import 'package:select/footer.dart';

import 'featurecard.dart';

class Homepage extends StatelessWidget {
  const Homepage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color.fromRGBO(81, 23, 123, 1),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity, // Expand to available width
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/backdrop2.jpg'), // Replace with your image asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            32, 100, 16, 40), // Reduced right padding
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Align text content to the left
                          children: [
                            Text(
                              "Select From The Hottest Guys To Hook Up With!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 65.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your Join for Free button action here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: AppColors.backgroundColor,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.0, vertical: 12.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  child: Text(
                                    "Join for Free",
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Add your Login button action here
                                  },
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Wrap(spacing: 16.0, runSpacing: 16.0, children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WHAT'S SELECT?",
                          style: TextStyle(
                            fontSize: 43.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FeatureCard(
                                icon: Icons.group,
                                title: "Exclusive Community for Single Women",
                                content:
                                    "Join our exclusive network designed for single women to connect with selective and like-minded men.",
                              ),
                              FeatureCard(
                                icon: Icons.explore,
                                title: "Explore and Connect",
                                content:
                                    "With diverse profiles and interests, Selective Connections is the perfect place to explore and connect.",
                              ),
                              FeatureCard(
                                icon: Icons.event,
                                title: "Upcoming Events",
                                content:
                                    "Discover a variety of upcoming events and gatherings tailored for single women and selective men.",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FeatureCard(
                                icon: Icons.favorite,
                                title: "Quality Matches",
                                content:
                                    "Selective Connections is dedicated to quality matches, making it more than just a dating site.",
                              ),
                              FeatureCard(
                                icon: Icons.people,
                                title: "Embrace Diversity",
                                content:
                                    "Celebrate diversity and uniqueness - there's no one right way, only the right way for you.",
                              ),
                              FeatureCard(
                                icon: Icons.security,
                                title: "Privacy First",
                                content:
                                    "We prioritize your privacy. Your data is secure, and we respect your preferences at all times.",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FeatureCard(
                                icon: Icons.group,
                                title: "Community-Driven",
                                content:
                                    "We're not a faceless corporation; we're a community of selective men and single women building a network.",
                              ),
                              FeatureCard(
                                icon: Icons.attach_money,
                                title: "Almost Free",
                                content:
                                    "Selective Connections is 99.9% free. Interact, connect, and have fun with like-minded people.",
                              ),
                              FeatureCard(
                                icon: Icons.person,
                                title: "Authentic Connections",
                                content:
                                    "Be your complete, authentic self on Selective Connections - a network that values your uniqueness.",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:120.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Card(
                          elevation: 4,
                          margin: EdgeInsets.all(16),
                          child: Container(
                            width: 400, // Expand to available width
                            height: 500,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/backdrop1.jpg'), // Replace with your image asset path
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Treat Yourself To A Select Male',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                    ],
                  ),
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity, // Expand to available width
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/your_image.jpg'), // Replace with your image asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                'Browse Hot Local Select Men', // Replace with your content
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.white,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your Join for Free button action here
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: AppColors.backgroundColor,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.0, vertical: 12.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                child: Text(
                                  "Join for Free",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity, // Expand to available width
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/backdrop4.jpeg'), // Replace with your image asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            32, 100, 16, 40), // Reduced right padding
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Align text content to the left
                          children: [
                            Text(
                              "Select A Lucky Guy To Satisfy Your Dreams Tonight!",
                              style: TextStyle(
                                color: AppColors.backgroundColor,
                                fontSize: 65.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
