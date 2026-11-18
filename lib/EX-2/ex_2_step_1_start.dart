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
      body: Column(children: [FavoriteCard()]),
    ),
  ),
);
