import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_card.dart';
import '../model/category_card_data.dart';

class CategoriesScreen extends StatelessWidget {
  final List<CategoryCardData> categories = [
    CategoryCardData(
      cardText: "Art",
      gradientStartColor: Colors.deepOrange.shade200,
      gradientEndColor: Colors.deepOrange.shade700,
    ),
    CategoryCardData(
      cardText: "Beauty",
      gradientStartColor: Colors.greenAccent.shade200,
      gradientEndColor: Colors.greenAccent.shade700,
    ),
    CategoryCardData(
      cardText: "Design",
      gradientStartColor: Colors.yellowAccent.shade200,
      gradientEndColor: Colors.yellowAccent.shade700,
    ),
    CategoryCardData(
      cardText: "Future",
      gradientStartColor: Colors.blue.shade200,
      gradientEndColor: Colors.blue.shade700,
    ),
    CategoryCardData(
      cardText: "Motivational",
      gradientStartColor: Colors.cyanAccent.shade200,
      gradientEndColor: Colors.cyanAccent.shade700,
    ),
    CategoryCardData(
      cardText: "Poetry",
      gradientStartColor: Colors.deepPurpleAccent.shade200,
      gradientEndColor: Colors.deepPurpleAccent.shade700,
    ),
    CategoryCardData(
      cardText: "Psychology",
      gradientStartColor: Colors.orangeAccent.shade200,
      gradientEndColor: Colors.orangeAccent.shade700,
    ),
  ];

  CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.bookmark,
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: MySearchBar(
              hintText: "Search Categories",
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    categoryText: categories[index].cardText,
                    gradientStartColor: categories[index].gradientStartColor,
                    gradientEndColor: categories[index].gradientEndColor,
                  );
                }),
          )
        ],
      ),
    );
  }
}
