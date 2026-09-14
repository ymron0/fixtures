class CategoryBudgetFixture {
  const CategoryBudgetFixture({
    required this.assetId,
    required this.limit,
    required this.direction,
    required this.period,
    required this.effectiveFrom,
    this.effectiveUntil,
  });

  final String assetId;
  final String limit;
  final String direction;
  final String period;
  final DateTime effectiveFrom;
  final DateTime? effectiveUntil;
}

class CategoryFixture {
  const CategoryFixture({
    required this.id,
    required this.name,
    this.parentCategoryId,
    required this.kind,
    this.budgets = const [],
    required this.icon,
    required this.color,
    required this.sortOrder,
    required this.createdAt,
    required this.modifiedAt,
    this.deletedAt,
    required this.entityVersion,
  });

  final String id;
  final String name;
  final String? parentCategoryId;
  final String kind;
  final List<CategoryBudgetFixture> budgets;
  final String icon;
  final String color;
  final int sortOrder;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final DateTime? deletedAt;
  final int entityVersion;
}
