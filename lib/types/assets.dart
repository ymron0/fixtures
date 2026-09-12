class AssetCodeFixture {
  final String value;
  const AssetCodeFixture(this.value);
}

abstract class AssetFixture {
  final String id;
  final String name;
  final AssetCodeFixture code;
  final int decimalPlaces;
  final String? symbol;
  final String? remoteLogoUrl;
  final String? bundledLogoAsset;
  final int entityVersion;
  final DateTime createdAt;
  final DateTime modifiedAt;

  const AssetFixture({
    required this.id,
    required this.name,
    required this.code,
    required this.decimalPlaces,
    this.symbol,
    this.remoteLogoUrl,
    this.bundledLogoAsset,
    required this.entityVersion,
    required this.createdAt,
    required this.modifiedAt,
  });
}

class CurrencyFixture extends AssetFixture {
  CurrencyFixture({
    required String id,
    required String name,
    required AssetCodeFixture code,
    required int decimalPlaces,
    String? symbol,
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
         entityVersion: 1,
         createdAt: DateTime.now(),
         modifiedAt: DateTime.now(),
       );
}
