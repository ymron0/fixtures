import 'package:fixtures/types/jars.dart';
import 'package:fixtures/types/transactions.dart';

final List<JarFixture> jarsFixtures = [
  JarFixture(
    id: 'jar-household',
    name: 'Household Reserve',
    description: 'Money reserved for recurring household costs.',
    kind: 'sinkingFund',
    targets: [
      JarTargetFixture(
        amount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '1000',
          direction: 'incoming',
        ),
        effectiveFrom: DateTime.utc(2026, 1, 1),
        effectiveUntil: DateTime.utc(2026, 4, 1),
      ),
      JarTargetFixture(
        amount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '2500',
          direction: 'incoming',
        ),
        effectiveFrom: DateTime.utc(2026, 4, 1),
      ),
    ],
    icon: 'accountBalanceWallet',
    color: 'blue',
    sortOrder: 0,
    createdAt: DateTime.utc(2026, 1, 5, 8),
    modifiedAt: DateTime.utc(2026, 4, 1, 8),
    entityVersion: 2,
  ),
  JarFixture(
    id: 'jar-emergency',
    name: 'Emergency Reserve',
    kind: 'reserve',
    targets: [
      JarTargetFixture(
        amount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '10000',
          direction: 'incoming',
        ),
        effectiveFrom: DateTime.utc(2026, 1, 1),
      ),
    ],
    icon: 'safe',
    color: 'red',
    sortOrder: 1,
    createdAt: DateTime.utc(2026, 1, 5, 8, 5),
    modifiedAt: DateTime.utc(2026, 1, 5, 8, 5),
    entityVersion: 1,
  ),
  JarFixture(
    id: 'jar-holidays',
    name: 'Holiday Fund',
    kind: 'savingsGoal',
    targets: [
      JarTargetFixture(
        amount: AssetAmountFixture(
          assetId: 'asset-eur',
          amount: '3000',
          direction: 'incoming',
        ),
        effectiveFrom: DateTime.utc(2026, 1, 1),
        targetDate: DateTime.utc(2027, 6, 1),
      ),
    ],
    icon: 'savings',
    color: 'teal',
    sortOrder: 2,
    createdAt: DateTime.utc(2026, 1, 5, 8, 10),
    modifiedAt: DateTime.utc(2026, 1, 5, 8, 10),
    entityVersion: 1,
  ),
  JarFixture(
    id: 'jar-archived',
    name: 'Archived Reserve',
    kind: 'reserve',
    targets: [
      JarTargetFixture(
        amount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '500',
          direction: 'incoming',
        ),
        effectiveFrom: DateTime.utc(2025, 1, 1),
      ),
    ],
    icon: 'wallet',
    color: 'grey',
    sortOrder: 99,
    archivedAt: DateTime.utc(2026, 8, 1, 12),
    createdAt: DateTime.utc(2025, 1, 1, 7),
    modifiedAt: DateTime.utc(2026, 8, 1, 12),
    entityVersion: 2,
  ),
  JarFixture(
    id: 'jar-deleted',
    name: 'Deleted Reserve',
    kind: 'reserve',
    icon: 'other',
    color: 'grey',
    sortOrder: 100,
    archivedAt: DateTime.utc(2026, 8, 1, 12),
    deletedAt: DateTime.utc(2026, 9, 1, 12),
    createdAt: DateTime.utc(2025, 5, 1, 7),
    modifiedAt: DateTime.utc(2026, 9, 1, 12),
    entityVersion: 3,
  ),
];
