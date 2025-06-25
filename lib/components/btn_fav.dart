import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BtnFav extends StatelessWidget {
  const BtnFav({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle favorite button tap
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Added to Favorites',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Color(0xFFFF6464),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset("assets/icons/heart.svg", color: Colors.white),
      ),
    );
  }
}
