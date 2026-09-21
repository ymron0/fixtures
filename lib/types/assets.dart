import 'package:fixtures/types/entity_logo.dart';

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
  final EntityLogoFixture? logo;
  final int entityVersion;
  final DateTime createdAt;
  final DateTime modifiedAt;

  const AssetFixture({
    required this.id,
    required this.name,
    required this.code,
    required this.decimalPlaces,
    this.symbol,
    this.logo,
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
    EntityLogoFixture? logo,
  }) : super(
         id: id,
         name: name,
         code: code,
         decimalPlaces: decimalPlaces,
         symbol: symbol,
         logo: logo,
         entityVersion: 1,
         createdAt: DateTime.now(),
         modifiedAt: DateTime.now(),
       );
}

class CommodityAssetFixture extends AssetFixture {
  CommodityAssetFixture({
    required String id,
    required String name,
    required AssetCodeFixture code,
    required int decimalPlaces,
    String? symbol,
    EntityLogoFixture? logo,
  }) : super(
         id: id,
         name: name,
         code: code,
         decimalPlaces: decimalPlaces,
         symbol: symbol,
         logo: logo,
         entityVersion: 1,
         createdAt: DateTime.now(),
         modifiedAt: DateTime.now(),
       );
}

class CryptoAssetFixture extends AssetFixture {
  CryptoAssetFixture({
    required String id,
    required String name,
    required AssetCodeFixture code,
    required int decimalPlaces,
    this.paymentEnabled = false,
    String? symbol,
    EntityLogoFixture? logo,
  }) : super(
         id: id,
         name: name,
         code: code,
         decimalPlaces: decimalPlaces,
         symbol: symbol,
         logo: logo,
         entityVersion: 1,
         createdAt: DateTime.now(),
         modifiedAt: DateTime.now(),
       );

  final bool paymentEnabled;
}

class StockAssetFixture extends AssetFixture {
  StockAssetFixture({
    required String id,
    required String name,
    required AssetCodeFixture code,
    required int decimalPlaces,
    String? symbol,
    EntityLogoFixture? logo,
  }) : super(
         id: id,
         name: name,
         code: code,
         decimalPlaces: decimalPlaces,
         symbol: symbol,
         logo: logo,
         entityVersion: 1,
         createdAt: DateTime.now(),
         modifiedAt: DateTime.now(),
       );
}
