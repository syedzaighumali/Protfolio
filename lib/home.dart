import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/skills.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:url_launcher/url_launcher.dart';

import 'dim.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String facebookurl='https://www.facebook.com/zaighum.ali.9887';
  final String Linkdinurl='https://www.linkedin.com/in/syedzaighumali';

  int currentIndex = 0;
  Future<void> Launchlink()async{
    final Uri url=Uri.parse(Linkdinurl);
    if(!await launchUrl(url,mode: LaunchMode.platformDefault));
    throw 'launch failed';
  }
  Future<void> launchfacebook() async{

    final Uri url= Uri.parse(facebookurl);
    if (!await launchUrl(url , mode: LaunchMode.platformDefault)  ){

      throw 'couldnot launch facebook url';
    }

  }

  final List<String> pageTitles = ['Home', 'Projects', 'Skills', 'About','Contact'];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF010E18),
                Color(0xFF010E18),
                Color(0xFF010E18),
                Color(0xFF16283A),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Row(
          children: [
            const Text(
              'Zai',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'g.',
              style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                // ✅ Desktop mode – show inline menu
                return Row(
                  children: List.generate(pageTitles.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: () => onTabTapped(index),
                        child: Text(
                          pageTitles[index],
                          style: TextStyle(
                            color: currentIndex == index ? Colors.amber : Colors.white,
                            fontWeight: currentIndex == index ? FontWeight.bold : FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    );
                  }),
                );
              } else {
                // ✅ Mobile mode – show hamburger icon
                return Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                  ),
                );
              }
            },
          ),
        ],
      ),



      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF010E18),
              Color(0xFF010E18),
              Color(0xFF010E18),
              Color(0xFF16283A),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: IndexedStack(
          index: currentIndex,
          children: [
            // Home Page (Index 0)
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                children: [
                  // Left side: Text
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi, I'm Syed zaighum ali",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 80,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "App developer",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),

                           const Text(
                            "  I'm a passionate Flutter app developer who creates sleek,high-performance mobile apps for"
                                " Android  using modern UI, clean code,",


                          style: TextStyle(color: Colors.white70, fontSize: 16),
                          ),

                        const SizedBox(height: 30),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                              ),
                              child: const Text("Hire Me"),
                            ),
                            const SizedBox(width: 16),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.white),
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                              ),
                              child: const Text(
                                "Let's Talk",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 60),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(

                            children: [
                              IconButton(
                                onPressed: launchfacebook,
                                icon: const Icon(Icons.facebook),
                                iconSize: 30,
                                color: Colors.white,

                              ),
                              SizedBox(width: 50),
                              IconButton(
                                onPressed: Launchlink,
                                icon: const Icon(FontAwesomeIcons.linkedin),
                                iconSize: 30,

                                color: Colors.white,
                              ),
                              SizedBox(width: 50),

                              IconButton(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons.instagram),
                                iconSize: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Right side: Image
                  Expanded(
                    flex: 1,
                    child: TapFadeImage(),
                  ),
                ],
              ),
            ),

            // Education Page (Index 1)
            const Education(),

            // Skills Page (Index 2)
            const Skills(),

            const About(),

            // Contact Page (Index 3)
            const Contact(),
          ],
        ),
      ),
    );
  }
}
