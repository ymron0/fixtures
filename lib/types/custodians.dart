import 'package:fixtures/types/entity_logo.dart';

class CustodianFixture {
  const CustodianFixture({
    required this.id,
    required this.name,
    required this.kind,
    this.logo,
    required this.icon,
    required this.color,
    required this.sortOrder,
    required this.createdAt,
    required this.modifiedAt,
    required this.entityVersion,
  });

  final String id;
  final String name;
  final String kind;
  final EntityLogoFixture? logo;
  final String icon;
  final String color;
  final int sortOrder;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final int entityVersion;
}
