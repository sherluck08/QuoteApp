import 'package:flutter/material.dart';

class SavedQuoteCard extends StatelessWidget {
  const SavedQuoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.grey[600]),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  "Good design is obvious, Greate Design is transparent"),
              const SizedBox(
                height: 10,
              ),
              const Text("---- Joe Sparano"),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 168, 142, 240),
                        Color(0xff5F35D6),
                      ],
                    ),
                  ),
                  child: const Text(
                    "Beauty",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.share,
                    color: Colors.grey[700],
                  ),
                  Icon(
                    Icons.bookmark_outline_sharp,
                    color: Colors.grey[700],
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
