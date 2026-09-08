import 'package:fixtures/types/assets.dart';

const List<AssetFixture> assetsFixtures = [
  CurrencyFixture(
    id: 'asset-eur',
    name: 'Euro',
    code: AssetCodeFixture('EUR'),
    decimalPlaces: 2,
    symbol: '€',
    remoteLogoUrl: 'https://example.com/euro.png',
    bundledLogoAsset: 'PLACEHOLDER_PATH',
  ),
  CurrencyFixture(
    id: 'asset-chf',
    name: 'Swiss Franc',
    code: AssetCodeFixture('CHF'),
    decimalPlaces: 2,
    symbol: 'Fr',
    remoteLogoUrl: 'https://example.com/swiss_franc.png',
    bundledLogoAsset: 'PLACEHOLDER_PATH',
  ),
  CurrencyFixture(
    id: 'asset-usd',
    name: 'US Dollar',
    code: AssetCodeFixture('USD'),
    decimalPlaces: 2,
    symbol: r'$',
    remoteLogoUrl: null,
    bundledLogoAsset: null,
  ),
];
