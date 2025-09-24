import 'package:flutter/material.dart';
import 'package:portfolio/photozoon.dart';
class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[
            Color(0xFF010E18),
            Color(0xFF010E18),
            Color(0xFF010E18),
            Color(0xFF16283A),],
              begin:Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Proj',style: TextStyle(
                    color: Colors.white,
                    fontSize:40,
                    fontWeight:FontWeight.bold
                  ),),
                  Text('ects',style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight:FontWeight.bold
                  ),)


                ],

              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 1000,
                height: 500,
                decoration: BoxDecoration(

                    color: Color(0xFF010E18),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(
                    blurRadius: 23,
                    spreadRadius: 10,

                  )]


                ),
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Resturant app',style: TextStyle(
                           color: Colors.white,
                            fontSize: 50,
                          fontWeight:FontWeight.bold
                             ),),
                        ),

                      ],
                    ),
                    SizedBox(width: 100,),
                    Container(
                      height: 400,
                      width: 5,
                      decoration: BoxDecoration(
                        color: Color(0xFF16283A),
                      ),
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ImageZoom(imagepath: 'assets/images/res.jpg'),
                            ImageZoom(imagepath: 'assets/images/res2.png'),
                            ImageZoom(imagepath: 'assets/images/res3.jpg')
                          ],
                        ),
                      ),
                    ),




                  ],

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 1000,
                height: 500,
                decoration: BoxDecoration(

                    color: Color(0xFF010E18),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(
                      blurRadius: 23,
                      spreadRadius: 10,

                    )]


                ),
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Ecomerce store',style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight:FontWeight.bold
                          ),),
                        ),

                      ],
                    ),
                    SizedBox(width: 100,),
                    Container(
                      height: 400,
                      width: 5,
                      decoration: BoxDecoration(
                        color: Color(0xFF16283A),
                      ),
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ImageZoom(imagepath: 'assets/images/store1.jpg'),
                            ImageZoom(imagepath: 'assets/images/store2.jpg'),
                            ImageZoom(imagepath: 'assets/images/store3.jpg')
                          ],
                        ),
                      ),
                    ),




                  ],

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 1000,
                height: 500,
                decoration: BoxDecoration(

                    color: Color(0xFF010E18),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(
                      blurRadius: 23,
                      spreadRadius: 10,

                    )]


                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 30,),
                    Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Some projects are in progress',style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight:FontWeight.bold
                          ),),
                        ),

                      ],
                    ),
                    SizedBox(width: 100,),





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
