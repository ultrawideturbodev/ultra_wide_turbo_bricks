const kKeys = ConstKeys._();

class ConstKeys {
  const ConstKeys._();

  static const _activeEntitlements = 'activeEntitlements';
  String get activeEntitlements => _activeEntitlements;

  static const _admin = 'admin';
  String get admin => _admin;

  static const _createdAt = 'createdAt';
  String get createdAt => _createdAt;

  static const _documentReference = 'documentReference';
  String get documentReference => _documentReference;

  static const _hiveEncryptionKey = 'hiveEncryptionKey';
  String get hiveEncryptionKey => _hiveEncryptionKey;

  static const _id = 'id';
  String get id => _id;

  static const _idParam = ':id';
  String get idParam => _idParam;

  static const _searchTerms = 'searchTerms';
  String get searchTerms => _searchTerms;

  static const _stripeRole = 'stripeRole';
  String get stripeRole => _stripeRole;

  static const _updated = 'updated';
  String get updated => _updated;

  static const _updatedAt = 'updatedAt';
  String get updatedAt => _updatedAt;

  static const _userId = 'userId';
  String get userId => _userId;

  static const _userIds = 'userIds';
  String get userIds => _userIds;

  static const _userLevel = 'userLevel';
  String get userLevel => _userLevel;

  static const _createdByUserId = 'createdBy';
  String get createdByUserId => _createdByUserId;

  static const _recipientId = 'recipientId';
  String get recipientId => _recipientId;

  static const _householdId = 'householdId';
  String get householdId => _householdId;

  static const _inviteState = 'inviteState';
  String get inviteState => _inviteState;

  static const _shoppingListId = 'shoppingListId';
  String get shoppingListId => _shoppingListId;

  static const _shoppingListIdParam = ':shoppingListId';
  String get shoppingListIdParam => _shoppingListIdParam;

  static const _email = 'email';
  String get email => _email;

  static const _settings = 'settings';
  String get settings => _settings;

  static const _preferences = 'preferences';
  String get preferences => _preferences;
}
