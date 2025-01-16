const kValues = ConstValues._();

class ConstValues {
  const ConstValues._();

  static const _maxFileSize = 10 * 1024 * 1024;
  int get maxFileSize => _maxFileSize;

  static const _null = 'null';
  String get null_ => _null;

  static const _noUserId = 'no-user-id';
  String get noUserId => _noUserId;

  static const _privacyPolicyUrl = '';
  String get privacyPolicyUrl => _privacyPolicyUrl;

  static const _termsOfServiceUrl = '';
  String get termsOfServiceUrl => _termsOfServiceUrl;
}
