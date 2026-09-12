import 'package:fixtures/types/entity_logo.dart';

class AccountFixture {
  const AccountFixture({
    required this.id,
    required this.name,
    required this.custodianId,
    required this.denominationAssetId,
    required this.kind,
    this.reference,
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
  final String custodianId;
  final String denominationAssetId;
  final String kind;
  final String? reference;
  final EntityLogoFixture? logo;
  final String icon;
  final String color;
  final int sortOrder;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final int entityVersion;
}
