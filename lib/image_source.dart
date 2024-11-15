sealed class ImageSource {}

class Asset extends ImageSource {
  Asset(this.path);
  final String path;
}

class Network extends ImageSource {
  Network(this.url);
  final String url;
}
