class AssetAmountFixture {
  const AssetAmountFixture({
    required this.assetId,
    required this.amount,
    required this.direction,
  });

  final String assetId;
  final String amount;
  final String direction;
}

class LedgerEntryFixture {
  const LedgerEntryFixture({
    required this.accountId,
    required this.transactionAmount,
    required this.accountAmount,
    required this.valuationAmount,
    required this.role,
  });

  final String accountId;
  final AssetAmountFixture transactionAmount;
  final AssetAmountFixture accountAmount;
  final AssetAmountFixture valuationAmount;
  final String role;
}

class TransactionSplitFixture {
  const TransactionSplitFixture({
    required this.transactionAmount,
    required this.valuationAmount,
    this.budgetId,
    this.categoryId,
    this.jarId,
  });

  final AssetAmountFixture transactionAmount;
  final AssetAmountFixture valuationAmount;
  final String? budgetId;
  final String? categoryId;
  final String? jarId;
}

class TransactionFixture {
  const TransactionFixture({
    required this.id,
    required this.kind,
    required this.merchantId,
    this.description,
    this.note,
    required this.state,
    required this.splits,
    required this.ledgerEntries,
    required this.entityVersion,
    required this.createdAt,
    required this.modifiedAt,
  });

  final String id;
  final String kind;
  final String merchantId;
  final String? description;
  final String? note;
  final String state;
  final List<TransactionSplitFixture> splits;
  final List<LedgerEntryFixture> ledgerEntries;
  final int entityVersion;
  final DateTime createdAt;
  final DateTime modifiedAt;
}
