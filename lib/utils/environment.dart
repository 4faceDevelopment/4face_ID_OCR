class Environment {
  final String apiEndpoint;
  final String userAgent;

  Environment({required this.apiEndpoint, required this.userAgent});

  String get sandboxApiEndpoint => '$apiEndpoint/sandbox';
}
