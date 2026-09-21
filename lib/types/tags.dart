class TagFixture {
  const TagFixture({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.modifiedAt,
    this.archivedAt,
    this.deletedAt,
    required this.entityVersion,
  });

  final String id;
  final String name;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final DateTime? archivedAt;
  final DateTime? deletedAt;
  final int entityVersion;
}
