import 'package:fixtures/types/assets.dart';

const List<AssetFixture> assetsFixtures = [
  CurrencyFixture(
    id: 'asset-eur',
    name: 'Euro',
    code: AssetCodeFixture('EUR'),
    decimalPlaces: 2,
    symbol: '€',
    logoUrl: 'PLACEHOLDER_URL',
    bundledLogoPath: 'PLACEHOLDER_PATH',
  ),
  CurrencyFixture(
    id: 'asset-chf',
    name: 'Swiss Franc',
    code: AssetCodeFixture('CHF'),
    decimalPlaces: 2,
    symbol: 'Fr',
    logoUrl: 'PLACEHOLDER_URL',
    bundledLogoPath: 'PLACEHOLDER_PATH',
  ),
  CurrencyFixture(
    id: 'asset-usd',
    name: 'US Dollar',
    code: AssetCodeFixture('USD'),
    decimalPlaces: 2,
    symbol: r'$',
    logoUrl: null,
    bundledLogoPath: null,
  ),
];
