import 'package:fixtures/types/transactions.dart';

final List<TransactionFixture> transactionsFixtures = [
  TransactionFixture(
    id: 'transaction-groceries',
    kind: 'expense',
    merchantId: 'merchant-grocery-store',
    description: 'Weekly groceries',
    state: 'actual',
    splits: const [
      TransactionSplitFixture(
        transactionAmount: AssetAmountFixture(
          assetId: 'asset-eur',
          amount: '24.90',
          direction: 'outgoing',
        ),
        valuationAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '23.80',
          direction: 'outgoing',
        ),
        budgetId: 'budget-household',
        categoryId: 'category-groceries',
      ),
    ],
    ledgerEntries: const [
      LedgerEntryFixture(
        accountId: 'account-eur-checking',
        transactionAmount: AssetAmountFixture(
          assetId: 'asset-eur',
          amount: '24.90',
          direction: 'outgoing',
        ),
        accountAmount: AssetAmountFixture(
          assetId: 'asset-eur',
          amount: '24.90',
          direction: 'outgoing',
        ),
        valuationAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '23.80',
          direction: 'outgoing',
        ),
        role: 'primary',
      ),
    ],
    entityVersion: 1,
    createdAt: DateTime.utc(2026, 9, 1, 18, 30),
    modifiedAt: DateTime.utc(2026, 9, 1, 18, 30),
  ),
  TransactionFixture(
    id: 'transaction-salary',
    kind: 'income',
    merchantId: 'merchant-employer',
    description: 'Monthly salary',
    state: 'actual',
    splits: const [
      TransactionSplitFixture(
        transactionAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '5000.00',
          direction: 'incoming',
        ),
        valuationAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '5000.00',
          direction: 'incoming',
        ),
        categoryId: 'category-salary',
      ),
    ],
    ledgerEntries: const [
      LedgerEntryFixture(
        accountId: 'account-chf-checking',
        transactionAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '5000.00',
          direction: 'incoming',
        ),
        accountAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '5000.00',
          direction: 'incoming',
        ),
        valuationAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '5000.00',
          direction: 'incoming',
        ),
        role: 'primary',
      ),
    ],
    entityVersion: 1,
    createdAt: DateTime.utc(2026, 9, 2, 7),
    modifiedAt: DateTime.utc(2026, 9, 2, 7),
  ),
  TransactionFixture(
    id: 'transaction-transfer',
    kind: 'transfer',
    merchantId: 'self',
    description: 'Move funds to EUR account',
    state: 'planned',
    splits: const [],
    ledgerEntries: const [
      LedgerEntryFixture(
        accountId: 'account-chf-checking',
        transactionAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '100.00',
          direction: 'outgoing',
        ),
        accountAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '100.00',
          direction: 'outgoing',
        ),
        valuationAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '100.00',
          direction: 'outgoing',
        ),
        role: 'primary',
      ),
      LedgerEntryFixture(
        accountId: 'account-eur-savings',
        transactionAmount: AssetAmountFixture(
          assetId: 'asset-eur',
          amount: '104.00',
          direction: 'incoming',
        ),
        accountAmount: AssetAmountFixture(
          assetId: 'asset-eur',
          amount: '104.00',
          direction: 'incoming',
        ),
        valuationAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '100.00',
          direction: 'incoming',
        ),
        role: 'primary',
      ),
    ],
    entityVersion: 1,
    createdAt: DateTime.utc(2026, 9, 3, 12),
    modifiedAt: DateTime.utc(2026, 9, 3, 12),
  ),
  TransactionFixture(
    id: 'transaction-balance-correction',
    kind: 'balanceCorrection',
    merchantId: 'self',
    description: 'Reconcile cash balance',
    state: 'actual',
    splits: const [],
    ledgerEntries: const [
      LedgerEntryFixture(
        accountId: 'account-chf-cash',
        transactionAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '12.50',
          direction: 'incoming',
        ),
        accountAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '12.50',
          direction: 'incoming',
        ),
        valuationAmount: AssetAmountFixture(
          assetId: 'asset-chf',
          amount: '12.50',
          direction: 'incoming',
        ),
        role: 'primary',
      ),
    ],
    entityVersion: 1,
    createdAt: DateTime.utc(2026, 9, 4, 16, 15),
    modifiedAt: DateTime.utc(2026, 9, 4, 16, 15),
  ),
];
