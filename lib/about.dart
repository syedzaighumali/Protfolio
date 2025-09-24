import 'package:flutter/material.dart';
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(

        decoration:
        const BoxDecoration(
          gradient: LinearGradient(colors:[ Color(0xFF010E18),
            Color(0xFF010E18),
            Color(0xFF010E18),
            Color(0xFF16283A),])
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 102,
                  backgroundColor: Colors.white,
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 100,
                    backgroundImage: AssetImage('assets/images/me.png',),
                  ),
                ),
              ],
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
            Expanded(
              child: Container(
                height: 200,
                width: 500,
                child:   const Text(
                   "I’m a dedicated and passionate Flutter app developer"
                       " with a strong focus on building sleek, high-performance"
                       " mobile applications for Android I specialize in crafting modern,"
                       " responsive, and visually appealing user interfaces that align with current design "
                       "trends and deliver seamless user experiences.My development approach is rooted in clean architecture"
                       ", which ensures that the apps I build are not only robust and scalable but also easy to maintain and extend over time."
                       "I consistently follow industry best practices, leveraging tools like Provider, Riverpod, Bloc, and GetX for efficient state management"
                       ", and integratingFirebase and REST APIs to build fully functional, real-world applications."

                       " something exceptional together ",                 style: TextStyle(color: Colors.white70, fontSize: 16),

                ),




              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: (){}, child:
              Container

                (
                width: 100,
                  height: 50,

                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Read more',style: TextStyle(color: Colors.blueAccent),)))),
            )
          ],
        ),
      ),
    );
  }
}
