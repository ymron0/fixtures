import 'package:fixtures/types/custodians.dart';
import 'package:fixtures/types/entity_logo.dart';

final List<CustodianFixture> custodiansFixtures = [
  CustodianFixture(
    id: 'custodian-main-bank',
    name: 'Main Bank',
    kind: 'bank',
    logo: const EntityLogoFixture(
      source: 'remote',
      value: 'https://example.com/main-bank.png',
    ),
    icon: 'accountBalance',
    color: 'blue',
    sortOrder: 0,
    createdAt: DateTime.utc(2026, 1, 10, 8),
    modifiedAt: DateTime.utc(2026, 8, 20, 16),
    entityVersion: 1,
  ),
  CustodianFixture(
    id: 'custodian-brokerage',
    name: 'Brokerage',
    kind: 'broker',
    logo: const EntityLogoFixture(
      source: 'asset',
      value: 'assets/logos/brokerage.png',
    ),
    icon: 'trendingUp',
    color: 'violet',
    sortOrder: 1,
    createdAt: DateTime.utc(2026, 1, 10, 8, 5),
    modifiedAt: DateTime.utc(2026, 8, 20, 16, 5),
    entityVersion: 1,
  ),
  CustodianFixture(
    id: 'custodian-crypto-exchange',
    name: 'Crypto Exchange',
    kind: 'exchange',
    icon: 'currencyExchange',
    color: 'orange',
    sortOrder: 2,
    createdAt: DateTime.utc(2026, 1, 10, 8, 10),
    modifiedAt: DateTime.utc(2026, 1, 10, 8, 10),
    entityVersion: 1,
  ),
  CustodianFixture(
    id: 'custodian-self-custody',
    name: 'Self Custody',
    kind: 'selfCustody',
    icon: 'wallet',
    color: 'green',
    sortOrder: 3,
    createdAt: DateTime.utc(2026, 1, 10, 8, 15),
    modifiedAt: DateTime.utc(2026, 1, 10, 8, 15),
    entityVersion: 1,
  ),
];
