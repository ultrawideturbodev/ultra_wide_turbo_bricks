import 'package:{{packageName.snakeCase()}}/core/services/random_service.dart';

String gRandomEmptyPlaceholder([Object? key]) =>
    RandomService.locateSingleton.emptyPlaceholderById(key);

String gRandomNoResultsPlaceholder([Object? key]) =>
    RandomService.locateSingleton.noResultsPlaceholderById(key);

String gRandomShoppingListItemHint([Object? key]) =>
    RandomService.locateSingleton.shoppingListItemHintById(key);
