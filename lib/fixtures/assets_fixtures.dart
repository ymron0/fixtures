import 'package:fixtures/types/assets.dart';

const List<AssetFixture> assetsFixtures = [
  CurrencyFixture(
    id: 'asset-eur',
    name: 'Euro',
    code: AssetCodeFixture('EUR'),
    decimalPlaces: 2,
    symbol: '€',
    remoteLogoUrl: 'PLACEHOLDER_URL',
    bundledLogoAsset: 'PLACEHOLDER_PATH',
  ),
  CurrencyFixture(
    id: 'asset-chf',
    name: 'Swiss Franc',
    code: AssetCodeFixture('CHF'),
    decimalPlaces: 2,
    symbol: 'Fr',
    remoteLogoUrl: 'PLACEHOLDER_URL',
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
