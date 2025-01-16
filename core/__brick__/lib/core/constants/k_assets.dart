const kAssets = ConstAssets._();

class ConstAssets {
  const ConstAssets._();

  static const _imagesPath = 'assets/images';
  String get imagesPath => _imagesPath;

  static const _svgsPath = 'assets/svgs';
  String get svgsPath => _svgsPath;

  static const _lottiePath = 'assets/lottie';
  String get lottiePath => _lottiePath;

  static const _logo = 'assets/images/logo.png';
  String get logo => _logo;

  static const _placeholder = 'assets/images/placeholder.png';
  String get placeholder => _placeholder;
}
