import 'package:flutter/material.dart';

class QuoteOfTheDayCard extends StatelessWidget {
  const QuoteOfTheDayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.blue.shade300,
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          children: [
            const Text("Good design is obvious, Greate Design is transparent"),
            const SizedBox(
              height: 10,
            ),
            const Text("---- Joe Sparano"),
            const SizedBox(
              height: 8,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              RichText(
                text: const TextSpan(
                  text: "Tuesday\n",
                  children: [
                    TextSpan(text: "May 7, 2022"),
                  ],
                ),
              ),
              Row(children: const [
                Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                Icon(
                  Icons.bookmark_outline_sharp,
                  color: Colors.white,
                ),
              ]),
            ])
          ],
        ),
      ),
    );
  }
}
