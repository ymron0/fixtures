abstract class RateFixture {
  final String id;
  final String baseAssetId;
  final String quoteAssetId;
  final double rate;
  final DateTime effectiveAt;
  final int entityVersion;
  final DateTime createdAt;
  final DateTime modifiedAt;

  const RateFixture({
    required this.id,
    required this.baseAssetId,
    required this.quoteAssetId,
    required this.rate,
    required this.effectiveAt,
    required this.entityVersion,
    required this.createdAt,
    required this.modifiedAt,
  });
}

class ExchangeRateFixture extends RateFixture {
  const ExchangeRateFixture({
    required String id,
    required String baseAssetId,
    required String quoteAssetId,
    required double rate,
    required DateTime effectiveAt,
    required int entityVersion,
    required DateTime createdAt,
    required DateTime modifiedAt,
  }) : super(
         id: id,
         baseAssetId: baseAssetId,
         quoteAssetId: quoteAssetId,
         rate: rate,
         effectiveAt: effectiveAt,
         entityVersion: entityVersion,
         createdAt: createdAt,
         modifiedAt: modifiedAt,
       );
}
