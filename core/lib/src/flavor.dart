enum Flavor {
  development,
  production;

  bool get isProd => this == Flavor.production;
}