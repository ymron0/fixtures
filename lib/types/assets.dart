class AssetCodeFixture {
  final String value;
  const AssetCodeFixture(this.value);
}

abstract class AssetFixture {
  final String id;
  final String name;
  final AssetCodeFixture code;
  final int decimalPlaces;
  final String symbol;
  final String? remoteLogoUrl;
  final String? bundledLogoAsset;

  const AssetFixture({
    required this.id,
    required this.name,
    required this.code,
    required this.decimalPlaces,
    required this.symbol,
    this.remoteLogoUrl,
    this.bundledLogoAsset,
  });
}

class CurrencyFixture extends AssetFixture {
  const CurrencyFixture({
    required String id,
    required String name,
    required AssetCodeFixture code,
    required int decimalPlaces,
    required String symbol,
    String? remoteLogoUrl,
    String? bundledLogoAsset,
  }) : super(
         id: id,
         name: name,
         code: code,
         decimalPlaces: decimalPlaces,
         symbol: symbol,
         remoteLogoUrl: remoteLogoUrl,
         bundledLogoAsset: bundledLogoAsset,
       );
}
