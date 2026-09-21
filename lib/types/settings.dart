class SettingsFixture {
  const SettingsFixture({
    required this.valuationCurrencyId,
    this.plannedTransactionGenerationHorizon = 'twoYears',
    this.allowOverbudgetTransactions = true,
    this.allowNegativeJarBalances = true,
  });

  final String valuationCurrencyId;
  final String plannedTransactionGenerationHorizon;
  final bool allowOverbudgetTransactions;
  final bool allowNegativeJarBalances;
}
