import 'package:fixtures/types/merchants.dart';

final List<MerchantFixture> merchantsFixtures = [
  MerchantFixture(
    id: 'merchant-grocery-store',
    name: 'Grocery Store',
    createdAt: DateTime.utc(2026, 1, 10, 8),
    modifiedAt: DateTime.utc(2026, 8, 28, 17, 30),
    entityVersion: 1,
  ),
  MerchantFixture(
    id: 'merchant-employer',
    name: 'Employer',
    createdAt: DateTime.utc(2026, 1, 10, 8, 5),
    modifiedAt: DateTime.utc(2026, 8, 30, 9),
    entityVersion: 1,
  ),
  MerchantFixture(
    id: 'self',
    name: 'Self',
    createdAt: DateTime.utc(2026, 1, 10, 8, 10),
    modifiedAt: DateTime.utc(2026, 1, 10, 8, 10),
    entityVersion: 1,
  ),
  MerchantFixture(
    id: 'merchant-archived-cafe',
    name: 'Archived Cafe',
    createdAt: DateTime.utc(2025, 5, 1, 7),
    modifiedAt: DateTime.utc(2026, 8, 1, 12),
    archivedAt: DateTime.utc(2026, 8, 1, 12),
    entityVersion: 1,
  ),
];
