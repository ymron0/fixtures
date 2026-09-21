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
    this.categoryId,
    this.jarId,
  });

  final AssetAmountFixture transactionAmount;
  final AssetAmountFixture valuationAmount;
  final String? categoryId;
  final String? jarId;
}

class TransactionOffsetFixture {
  const TransactionOffsetFixture({
    required this.originalTransactionId,
    required this.kind,
  });

  final String originalTransactionId;
  final String kind;
}

class TransactionOccurrenceOriginFixture {
  const TransactionOccurrenceOriginFixture({
    required this.transactionSeriesId,
    required this.scheduledOn,
  });

  final String transactionSeriesId;
  final DateTime scheduledOn;
}

class TransactionFixture {
  const TransactionFixture({
    required this.id,
    required this.kind,
    required this.merchantId,
    required this.effectiveAt,
    this.description,
    this.note,
    required this.state,
    this.offset,
    this.recurrenceOrigin,
    this.deletedAt,
    this.tagIds = const [],
    required this.splits,
    required this.ledgerEntries,
    required this.entityVersion,
    required this.createdAt,
    required this.modifiedAt,
  });

  final String id;
  final String kind;
  final String merchantId;
  final DateTime effectiveAt;
  final String? description;
  final String? note;
  final String state;
  final TransactionOffsetFixture? offset;
  final TransactionOccurrenceOriginFixture? recurrenceOrigin;
  final DateTime? deletedAt;
  final List<String> tagIds;
  final List<TransactionSplitFixture> splits;
  final List<LedgerEntryFixture> ledgerEntries;
  final int entityVersion;
  final DateTime createdAt;
  final DateTime modifiedAt;
}

class TransactionTemplateFixture {
  const TransactionTemplateFixture({
    required this.kind,
    required this.merchantId,
    this.description,
    this.note,
    this.tagIds = const [],
    required this.splits,
    required this.ledgerEntries,
  });

  final String kind;
  final String merchantId;
  final String? description;
  final String? note;
  final List<String> tagIds;
  final List<TransactionSplitFixture> splits;
  final List<LedgerEntryFixture> ledgerEntries;
}

class RecurrenceAmountEndFixture {
  const RecurrenceAmountEndFixture({
    required this.targetAmount,
    required this.completion,
  });

  final AssetAmountFixture targetAmount;
  final String completion;
}

class RecurrenceEndFixture {
  const RecurrenceEndFixture({this.until, this.count, this.amount});

  final DateTime? until;
  final int? count;
  final RecurrenceAmountEndFixture? amount;
}

class RecurrenceRuleFixture {
  const RecurrenceRuleFixture({
    required this.startsOn,
    required this.frequency,
    this.interval = 1,
    this.end,
  });

  final DateTime startsOn;
  final String frequency;
  final int interval;
  final RecurrenceEndFixture? end;
}

class RecurrenceExceptionFixture {
  const RecurrenceExceptionFixture({
    required this.scheduledOn,
    required this.kind,
    this.replacementOn,
    this.replacementTemplate,
    this.extendsSeries = false,
  });

  final DateTime scheduledOn;
  final String kind;
  final DateTime? replacementOn;
  final TransactionTemplateFixture? replacementTemplate;
  final bool extendsSeries;
}

class TransactionSeriesFixture {
  const TransactionSeriesFixture({
    required this.id,
    required this.template,
    required this.recurrenceRule,
    this.exceptions = const [],
    this.isPaused = false,
    this.archivedAt,
    this.deletedAt,
    required this.createdAt,
    required this.modifiedAt,
    required this.entityVersion,
  });

  final String id;
  final TransactionTemplateFixture template;
  final RecurrenceRuleFixture recurrenceRule;
  final List<RecurrenceExceptionFixture> exceptions;
  final bool isPaused;
  final DateTime? archivedAt;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final int entityVersion;
}
