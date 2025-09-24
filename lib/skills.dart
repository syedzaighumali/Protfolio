import 'package:flutter/material.dart';
import 'package:portfolio/skillbr.dart';
class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF010E18),
            Color(0xFF010E18),
            Color(0xFF010E18),
            Color(0xFF16283A),])

        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text('Skil',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40
                    ),),
                    Text('LS',style: TextStyle(
                        color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30
                    ),),


              ]),

              SizedBox(height: 49,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 500,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF010E18),
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 2,
                                color: Colors.white

                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Dart', style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text('85%', style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Skillbr(value: 0.8),
                              SizedBox(height: 24),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Kotlin', style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text('70%', style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Skillbr(value: 0.7),
                              SizedBox(height: 24),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('html&css', style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text('100%', style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Skillbr(value: 0.9),
                              SizedBox(height: 24),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('js', style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text('60%', style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Skillbr(value: 0.7),
                              SizedBox(height: 24),
                            ],
                          ),
                        ),

                        SizedBox(width: 90,),
                        Container(
                          width: 500,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF010E18),
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  color: Colors.white

                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Frontend web developer', style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text('90%', style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Skillbr(value: 0.8),
                              SizedBox(height: 24),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('App developer', style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text('90%', style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Skillbr(value: 0.7),
                              SizedBox(height: 24),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('ui designer', style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text('90%', style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Skillbr(value: 0.9),
                              SizedBox(height: 24),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Firebase Architect	', style: TextStyle(color: Colors.white,fontSize: 20)),
                                  Text('80%', style: TextStyle(color: Colors.white,fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Skillbr(value: 0.8),
                              SizedBox(height: 24),

                              SizedBox(height: 8),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )



    );

  }
}
