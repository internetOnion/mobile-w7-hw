import "package:flutter/material.dart";
import "package:practice_w7/EX-2/favorite_card.dart";

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 8,
          children: [
            FavoriteCard(
              title: "Card 1",
              description: "This is the first card",
            ),
            FavoriteCard(
              title: "Card 2",
              description: "This is the second card",
            ),
            FavoriteCard(
              title: "Card 3",
              description: "This is the third card",
            ),
          ],
        ),
      ),
    ),
  ),
);
