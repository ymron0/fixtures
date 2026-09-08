class AssetIdFixture {
  final String value;
  const AssetIdFixture(this.value);
}

class AssetCodeFixture {
  final String value;
  const AssetCodeFixture(this.value);
}

abstract class AssetFixture {
  final AssetIdFixture id;
  final String displayName;
  final AssetCodeFixture code;
  final int decimalPlaces;
  final String symbol;
  final String? logoUrl;
  final String? bundledLogoPath;

  const AssetFixture({
    required this.id,
    required this.displayName,
    required this.code,
    required this.decimalPlaces,
    required this.symbol,
    this.logoUrl,
    this.bundledLogoPath,
  });
}

class CurrencyFixture extends AssetFixture {
  const CurrencyFixture({
    required AssetIdFixture id,
    required String displayName,
    required AssetCodeFixture code,
    required int decimalPlaces,
    required String symbol,
    String? logoUrl,
    String? bundledLogoPath,
  }) : super(
         id: id,
         displayName: displayName,
         code: code,
         decimalPlaces: decimalPlaces,
         symbol: symbol,
         logoUrl: logoUrl,
         bundledLogoPath: bundledLogoPath,
       );
}
