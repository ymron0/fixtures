import 'package:fixtures/types/categories.dart';

final List<CategoryFixture> categoriesFixtures = [
  CategoryFixture(
    id: 'category-household',
    name: 'Household',
    kind: 'expense',
    budgets: [
      CategoryBudgetFixture(
        limit: '2500',
        period: 'monthly',
        effectiveFrom: DateTime.utc(2026, 1, 1),
      ),
    ],
    icon: 'accountBalanceWallet',
    color: 'blue',
    sortOrder: 0,
    createdAt: DateTime.utc(2026, 1, 5, 8),
    modifiedAt: DateTime.utc(2026, 1, 5, 8),
    entityVersion: 1,
  ),
  CategoryFixture(
    id: 'category-groceries',
    name: 'Groceries',
    parentCategoryId: 'category-household',
    kind: 'expense',
    budgets: [
      CategoryBudgetFixture(
        limit: '700',
        period: 'monthly',
        effectiveFrom: DateTime.utc(2026, 1, 1),
      ),
    ],
    icon: 'storefront',
    color: 'green',
    sortOrder: 0,
    createdAt: DateTime.utc(2026, 1, 5, 8, 5),
    modifiedAt: DateTime.utc(2026, 1, 5, 8, 5),
    entityVersion: 1,
  ),
  CategoryFixture(
    id: 'category-salary',
    name: 'Salary',
    kind: 'income',
    icon: 'payments',
    color: 'teal',
    sortOrder: 0,
    createdAt: DateTime.utc(2026, 1, 5, 8, 10),
    modifiedAt: DateTime.utc(2026, 1, 5, 8, 10),
    entityVersion: 1,
  ),
  CategoryFixture(
    id: 'category-archived',
    name: 'Archived',
    kind: 'expense',
    icon: 'other',
    color: 'grey',
    sortOrder: 99,
    createdAt: DateTime.utc(2025, 5, 1, 7),
    modifiedAt: DateTime.utc(2026, 8, 1, 12),
    deletedAt: DateTime.utc(2026, 8, 1, 12),
    entityVersion: 1,
  ),
];
