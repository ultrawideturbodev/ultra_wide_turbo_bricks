import 'package:flutter/material.dart';

import '../globals/g_strings.dart';

enum NavigationTab {
  household,
  shoppingList,
  ;

  static const defaultValue = NavigationTab.household;

  int get branchIndex {
    switch (this) {
      case NavigationTab.household:
        return 0;
      case NavigationTab.shoppingList:
        return 1;
    }
  }

  String label({int? shoppingListsCount}) {
    switch (this) {
      case NavigationTab.household:
        return gStrings.household;
      case NavigationTab.shoppingList:
        return shoppingListsCount == 1 ? gStrings.shoppingList : gStrings.shoppingLists;
    }
  }

  IconData get icon {
    switch (this) {
      case NavigationTab.household:
        return Icons.home_rounded;
      case NavigationTab.shoppingList:
        return Icons.shopping_cart_rounded;
    }
  }

  bool get isHousehold => this == NavigationTab.household;
  bool get isShoppingList => this == NavigationTab.shoppingList;
}
