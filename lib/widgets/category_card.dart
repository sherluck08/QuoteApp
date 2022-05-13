import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryText;
  final Color gradientStartColor;
  final Color gradientEndColor;

  const CategoryCard(
      {Key? key,
      required this.categoryText,
      required this.gradientStartColor,
      required this.gradientEndColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/quotes');
        },
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Card(
            elevation: 10,
            shadowColor: gradientEndColor,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    gradientStartColor,
                    gradientEndColor,
                  ])),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    categoryText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
