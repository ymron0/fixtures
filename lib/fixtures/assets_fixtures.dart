import 'package:fixtures/types/assets.dart';
import 'package:fixtures/types/entity_logo.dart';

List<AssetFixture> assetsFixtures = [
  CurrencyFixture(
    id: 'asset-eur',
    name: 'Euro',
    code: AssetCodeFixture('EUR'),
    decimalPlaces: 2,
    symbol: '€',
    logo: EntityLogoFixture(
      source: 'remote',
      value: 'https://example.com/euro.png',
    ),
  ),
  CurrencyFixture(
    id: 'asset-chf',
    name: 'Swiss Franc',
    code: AssetCodeFixture('CHF'),
    decimalPlaces: 2,
    logo: EntityLogoFixture(
      source: 'remote',
      value: 'https://example.com/swiss_franc.png',
    ),
  ),
  CurrencyFixture(
    id: 'asset-usd',
    name: 'US Dollar',
    code: AssetCodeFixture('USD'),
    decimalPlaces: 2,
    symbol: r'$',
  ),
  CurrencyFixture(
    id: 'asset-uah',
    name: 'Ukrainian Hryvnia',
    code: AssetCodeFixture('UAH'),
    decimalPlaces: 2,
    symbol: '₴',
  ),
  CurrencyFixture(
    id: 'asset-pln',
    name: 'Polish Zloty',
    code: AssetCodeFixture('PLN'),
    decimalPlaces: 2,
    symbol: 'zł',
  ),
];
