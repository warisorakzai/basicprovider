import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/Providers/Favorites_provider.dart';
// ignore: depend_on_referenced_packages

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoritesProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    if (favoriteProvider.selectedItem.contains(index)) {
                      favoriteProvider.removeItem(index);
                    } else {
                      favoriteProvider.addItem(index);
                    }
                    // favoriteProvider.addItem(index);
                    // favoriteProvider.removeItem(index);
                  },
                  title: Text('Item $index'),
                  trailing: favoriteProvider.selectedItem.contains(index)
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
