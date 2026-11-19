import "package:flutter/material.dart";

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;

  const FavoriteCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  Widget getFavoriteIcon() {
    if (isFavorite) {
      return Icon(Icons.favorite, color: Colors.red);
    } else {
      return Icon(Icons.favorite_border);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(widget.description),
              ],
            ),
          ),
          IconButton(onPressed: toggleFavorite, icon: getFavoriteIcon()),
        ],
      ),
    );
  }
}
