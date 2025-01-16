const kLimits = ConstLimits._();

class ConstLimits {
  const ConstLimits._();

  static const _minUsernameLength = 3;
  int get minUsernameLength => _minUsernameLength;

  static const _maxUsernameLength = 30;
  int get maxUsernameLength => _maxUsernameLength;
}
