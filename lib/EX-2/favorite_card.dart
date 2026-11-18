import "package:flutter/material.dart";

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({super.key});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Title"), const SizedBox(height: 8), Text("Description")],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        ],
      ),
    );
  }
}
