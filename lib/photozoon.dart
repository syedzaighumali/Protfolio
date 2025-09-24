import 'package:flutter/material.dart';

class ImageZoom extends StatelessWidget {
  final imagepath;
  const ImageZoom({super.key,required this .imagepath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => Dialog(
            backgroundColor: Colors.transparent,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagepath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      child: Container(
        width: 150, // ✅ Changed from 300 to 150
        height: 150, // ✅ Changed from 100 to 150
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(blurRadius: 10,
          spreadRadius: 10)],


          image: DecorationImage(
            image: AssetImage(imagepath),
            fit: BoxFit.cover, // ✅ Changed from contain to cover
          ),
        ),
      ),
    );
  }
}
