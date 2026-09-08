import 'package:fixtures/types/assets.dart';

const List<AssetFixture> assetsFixtures = [
  CurrencyFixture(
    id: AssetIdFixture('asset-eur'),
    displayName: 'Euro',
    code: AssetCodeFixture('EUR'),
    decimalPlaces: 2,
    symbol: '€',
    logoUrl: 'PLACEHOLDER_URL',
    bundledLogoPath: 'PLACEHOLDER_PATH',
  ),
  CurrencyFixture(
    id: AssetIdFixture('asset-chf'),
    displayName: 'Swiss Franc',
    code: AssetCodeFixture('CHF'),
    decimalPlaces: 2,
    symbol: 'Fr',
    logoUrl: 'PLACEHOLDER_URL',
    bundledLogoPath: 'PLACEHOLDER_PATH',
  ),
  CurrencyFixture(
    id: AssetIdFixture('asset-usd'),
    displayName: 'US Dollar',
    code: AssetCodeFixture('USD'),
    decimalPlaces: 2,
    symbol: r'$',
    logoUrl: null,
    bundledLogoPath: null,
  ),
];
