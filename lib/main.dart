import 'package:flutter/material.dart';
import 'package:quoteapp/screens/categories_screen.dart';
import './widgets/quote_of_the_day_card.dart';
import './widgets/saved_quote_card.dart';
import './widgets/search_bar.dart';
import './screens/quote_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/category': (context) => CategoriesScreen(),
        '/quotes': (context) => QuoteScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.menu),
            Text("Home"),
            Icon(Icons.bookmark),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MySearchBar(
                hintText: "Search Quotes",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Saved Categories",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: const Text("View All"),
                        onTap: () {
                          Navigator.pushNamed(context, "/category");
                        },
                      ),
                      const Icon(Icons.arrow_right_alt_rounded),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink.shade800,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        height: 50,
                        width: 100,
                        child: const Center(
                          child: Text(
                            "Motivational",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 100,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Inspirational",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 100,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Psycological",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 100,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.lime.shade500,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Beauty",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Saved Categories",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: const Text("View All"),
                        onTap: () {
                          Navigator.pushNamed(context, "/quotes",
                              arguments: {""});
                        },
                      ),
                      const Icon(Icons.arrow_right_alt_rounded),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: QuoteOfTheDayCard(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Saved Quotes",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: const [
                      Text("View All"),
                      Icon(Icons.arrow_right_alt_rounded),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SavedQuoteCard()
            ],
          ),
        ),
      ),
    );
  }
}
