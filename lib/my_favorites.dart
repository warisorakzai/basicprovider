import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/Providers/Favorites_provider.dart';

class MyFavorites extends StatelessWidget {
  const MyFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesprovider = Provider.of<FavoritesProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('My Favorite List')),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favoritesprovider.selectedItem.length,
              itemBuilder: (context, index) {
                return Consumer<FavoritesProvider>(
                  builder:
                      (
                        BuildContext context,
                        FavoritesProvider value,
                        Widget? child,
                      ) {
                        return ListTile(
                          onTap: () {
                            if (value.selectedItem.contains(index)) {
                              value.removeItem(index);
                            } else {
                              value.addItem(index);
                            }
                            // favoriteProvider.addItem(index);
                            // favoriteProvider.removeItem(index);
                          },
                          title: Text('Item $index'),
                          trailing: value.selectedItem.contains(index)
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_border),
                        );
                      },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
