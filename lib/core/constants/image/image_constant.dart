class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get logo => toPng('test');

  // String get hotDog => toPng('test');
  // String get projeIcon => toPng('cirlce');

  String toPng(String name) => 'asset/image/$name.png';
}