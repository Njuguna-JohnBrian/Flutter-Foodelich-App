import 'package:flutter/material.dart';

import 'empty_grocery_screen.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EmptyGroceryScreen();
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(builder: (
      context,
      manager,
      child,
    ) {
      if (manager.groceryItems.isNotEmpty) {
        // todo:25 add grocerylistscreen
        return Container();
      } else {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              // todo 11: Present GroceryItemScreen
            },
          ),
          body: buildGroceryScreen(),
        );
      }
    });
  }
}
