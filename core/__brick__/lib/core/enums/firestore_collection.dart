import 'package:{{packageName.snakeCase()}}/features/auth/services/user_service.dart';
import 'package:{{packageName.snakeCase()}}/features/households/dtos/household_dto.dart';
import 'package:{{packageName.snakeCase()}}/features/households/dtos/household_invite_dto.dart';
import 'package:{{packageName.snakeCase()}}/features/households/services/household_invites_service.dart';
import 'package:{{packageName.snakeCase()}}/features/households/services/household_service.dart';
import 'package:{{packageName.snakeCase()}}/features/settings/dtos/settings_dto.dart';
import 'package:{{packageName.snakeCase()}}/features/settings/services/settings_service.dart';
import 'package:{{packageName.snakeCase()}}/features/shopping_list/dtos/shopping_list_dto.dart';
import 'package:{{packageName.snakeCase()}}/features/shopping_list/dtos/shopping_list_item_dto.dart';
import 'package:{{packageName.snakeCase()}}/features/shopping_list/services/shopping_list_items_service.dart';
import 'package:{{packageName.snakeCase()}}/features/shopping_list/services/shopping_lists_service.dart';

import '../../features/auth/dtos/user_dto.dart';
import '../../features/auth/dtos/user_profile_dto.dart';
import '../../features/auth/dtos/username_dto.dart';
import '../constants/k_keys.dart';

enum FirestoreCollection {
  userProfiles,
  users,
  usernames,
  households,
  householdInvites,
  settings,
  shoppingLists,
  shoppingListItems,
  ;

  bool get tryAddLocalDocumentReference {
    switch (this) {
      case FirestoreCollection.usernames:
        return true;
      case FirestoreCollection.users:
      case FirestoreCollection.userProfiles:
      case FirestoreCollection.households:
      case FirestoreCollection.settings:
      case FirestoreCollection.householdInvites:
      case FirestoreCollection.shoppingLists:
      case FirestoreCollection.shoppingListItems:
        return false;
    }
  }

  bool get isCollectionGroup {
    switch (this) {
      case FirestoreCollection.users:
      case FirestoreCollection.userProfiles:
      case FirestoreCollection.usernames:
      case FirestoreCollection.households:
      case FirestoreCollection.settings:
      case FirestoreCollection.householdInvites:
      case FirestoreCollection.shoppingLists:
      case FirestoreCollection.shoppingListItems:
        return false;
    }
  }

  Map<String, dynamic> Function(T value)? toJson<T>() => switch (this) {
        FirestoreCollection.users => UserDto.toJsonFactory,
        FirestoreCollection.userProfiles => UserProfileDto.toJsonFactory,
        FirestoreCollection.usernames => UsernameDto.toJsonFactory,
        FirestoreCollection.households => HouseholdDto.toJsonFactory,
        FirestoreCollection.settings => SettingsDto.toJsonFactory,
        FirestoreCollection.householdInvites => HouseholdInviteDto.toJsonFactory,
        FirestoreCollection.shoppingLists => ShoppingListDto.toJsonFactory,
        FirestoreCollection.shoppingListItems => ShoppingListItemDto.toJsonFactory,
      } as Map<String, dynamic> Function(T value)?;

  T Function(Map<String, dynamic> json)? fromJson<T>() => switch (this) {
        FirestoreCollection.users => UserDto.fromJsonFactory,
        FirestoreCollection.userProfiles => UserProfileDto.fromJsonFactory,
        FirestoreCollection.usernames => UsernameDto.fromJsonFactory,
        FirestoreCollection.households => HouseholdDto.fromJsonFactory,
        FirestoreCollection.settings => SettingsDto.fromJsonFactory,
        FirestoreCollection.householdInvites => HouseholdInviteDto.fromJsonFactory,
        FirestoreCollection.shoppingLists => ShoppingListDto.fromJsonFactory,
        FirestoreCollection.shoppingListItems => ShoppingListItemDto.fromJsonFactory,
      } as T Function(Map<String, dynamic> json)?;

  String get collectionName {
    switch (this) {
      case FirestoreCollection.users:
      case FirestoreCollection.userProfiles:
      case FirestoreCollection.usernames:
      case FirestoreCollection.households:
      case FirestoreCollection.settings:
      case FirestoreCollection.householdInvites:
      case FirestoreCollection.shoppingLists:
      case FirestoreCollection.shoppingListItems:
        return name;
    }
  }

  String get updatedFieldName {
    switch (this) {
      case FirestoreCollection.userProfiles:
      case FirestoreCollection.usernames:
      case FirestoreCollection.users:
      case FirestoreCollection.households:
      case FirestoreCollection.settings:
      case FirestoreCollection.householdInvites:
      case FirestoreCollection.shoppingLists:
      case FirestoreCollection.shoppingListItems:
        return kKeysUpdatedAt;
    }
  }

  String get createdFieldName {
    switch (this) {
      case FirestoreCollection.userProfiles:
      case FirestoreCollection.usernames:
      case FirestoreCollection.users:
      case FirestoreCollection.households:
      case FirestoreCollection.settings:
      case FirestoreCollection.householdInvites:
      case FirestoreCollection.shoppingLists:
      case FirestoreCollection.shoppingListItems:
        return kKeysCreatedAt;
    }
  }

  String get documentReferenceFieldName {
    switch (this) {
      case FirestoreCollection.users:
      case FirestoreCollection.userProfiles:
      case FirestoreCollection.usernames:
      case FirestoreCollection.households:
      case FirestoreCollection.settings:
      case FirestoreCollection.householdInvites:
      case FirestoreCollection.shoppingLists:
      case FirestoreCollection.shoppingListItems:
        return kKeysDocumentReference;
    }
  }

  String get apiName {
    switch (this) {
      case FirestoreCollection.users:
        return 'UsersApi';
      case FirestoreCollection.userProfiles:
        return 'ProfilesApi';
      case FirestoreCollection.usernames:
        return 'UsernamesApi';
      case FirestoreCollection.households:
        return 'HouseholdsApi';
      case FirestoreCollection.settings:
        return 'SettingsApi';
      case FirestoreCollection.householdInvites:
        return 'HouseholdInvitesApi';
      case FirestoreCollection.shoppingLists:
        return 'ShoppingListsApi';
      case FirestoreCollection.shoppingListItems:
        return 'ShoppingListItemsApi';
    }
  }

  String path({
    String? userId,
  }) {
    switch (this) {
      case FirestoreCollection.users:
      case FirestoreCollection.userProfiles:
      case FirestoreCollection.usernames:
      case FirestoreCollection.households:
      case FirestoreCollection.householdInvites:
      case FirestoreCollection.shoppingLists:
      case FirestoreCollection.shoppingListItems:
        return collectionName;
      case FirestoreCollection.settings:
        return '${FirestoreCollection.users.path()}/$userId/$collectionName';
    }
  }

  static Future<List> get isReady {
    final List<Future> futures = [];
    for (final collection in FirestoreCollection.values) {
      switch (collection) {
        case FirestoreCollection.userProfiles:
          break;
        case FirestoreCollection.users:
          futures.add(UserService.locate.isReady);
        case FirestoreCollection.usernames:
          break;
        case FirestoreCollection.households:
          futures.add(HouseholdService.locate.isReady);
          break;
        case FirestoreCollection.settings:
          futures.add(SettingsService.locate.isReady);
          break;
        case FirestoreCollection.householdInvites:
          futures.add(HouseholdInvitesService.locate.isReady);
          break;
        case FirestoreCollection.shoppingLists:
          futures.add(ShoppingListsService.locate.isReady);
          break;
        case FirestoreCollection.shoppingListItems:
          futures.add(ShoppingListItemsService.locate.isReady);
          break;
      }
    }
    return Future.wait(futures);
  }
}
