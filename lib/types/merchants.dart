class MerchantFixture {
  const MerchantFixture({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.modifiedAt,
    this.deletedAt,
    required this.entityVersion,
  });

  final String id;
  final String name;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final DateTime? deletedAt;
  final int entityVersion;
}
