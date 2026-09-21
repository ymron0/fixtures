import 'package:fixtures/types/transactions.dart';

class BalanceSnapshotSubjectFixture {
  const BalanceSnapshotSubjectFixture({
    this.accountId,
    this.custodianId,
    this.jarId,
  });

  final String? accountId;
  final String? custodianId;
  final String? jarId;
}

class BalanceSnapshotFixture {
  const BalanceSnapshotFixture({
    required this.subject,
    required this.snapshotDate,
    required this.capturedAt,
    required this.assetBalances,
    required this.denominationAmount,
    required this.valuationAmount,
  });

  final BalanceSnapshotSubjectFixture subject;
  final DateTime snapshotDate;
  final DateTime capturedAt;
  final List<AssetAmountFixture> assetBalances;
  final AssetAmountFixture denominationAmount;
  final AssetAmountFixture valuationAmount;
}
