import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final String quoteText;
  final String author;

  const QuoteCard({Key? key, required this.quoteText, required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.grey),
      child: Card(
        shadowColor: const Color.fromARGB(255, 212, 174, 185),
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Text(quoteText),
              const SizedBox(
                height: 10,
              ),
              Text("---- $author"),
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
                    color: Color(0xffD52A5C),
                  ),
                  Icon(
                    Icons.bookmark_outline_sharp,
                    color: Color(0xffD52A5C),
                  ),
                ]),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
