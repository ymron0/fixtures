import 'package:fixtures/types/transactions.dart';

class JarTargetFixture {
  const JarTargetFixture({
    required this.amount,
    required this.effectiveFrom,
    this.effectiveUntil,
    this.targetDate,
  });

  final AssetAmountFixture amount;
  final DateTime effectiveFrom;
  final DateTime? effectiveUntil;
  final DateTime? targetDate;
}

class JarFixture {
  const JarFixture({
    required this.id,
    required this.name,
    this.description,
    required this.kind,
    this.targets = const [],
    required this.icon,
    required this.color,
    required this.sortOrder,
    this.archivedAt,
    this.deletedAt,
    required this.createdAt,
    required this.modifiedAt,
    required this.entityVersion,
  });

  final String id;
  final String name;
  final String? description;
  final String kind;
  final List<JarTargetFixture> targets;
  final String icon;
  final String color;
  final int sortOrder;
  final DateTime? archivedAt;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final int entityVersion;
}
