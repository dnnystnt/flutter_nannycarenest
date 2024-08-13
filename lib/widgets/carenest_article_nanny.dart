import 'package:flutter/material.dart';
import 'package:flutter_nannycarenest/shared/theme.dart';

class CarenestArticleNanny extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String description;

  const CarenestArticleNanny({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      width: 396,
      height: 174,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imgUrl,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: kWhiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 6),
            Text(
              description,
              style: kWhiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
