class ExpenseBrandData {
  final String package;
  final String path;
  final String name;
  final double height;
  final double width;

  ExpenseBrandData({
    required this.path,
    required this.package,
    required this.name,
    required this.height,
    required this.width,
  });

  @override
  String toString() {
    return name;
  }
}

class ExpenseBrands {
  static ExpenseBrandData get logoMdsBlack => ExpenseBrandData(
        path: 'lib/src/assets/brands/logo-mds-black.svg',
        package: 'expense_assets',
        name: 'LogoMdsBlack',
        height: 25,
        width: 55,
      );

  static ExpenseBrandData get logoExpenseWhite => ExpenseBrandData(
        path: 'lib/src/assets/brands/logo-Expense-white.svg',
        package: 'expense_assets',
        name: 'LogoExpenseWhite',
        height: 33,
        width: 108,
      );

  static ExpenseBrandData get logoExpenseDsWhite => ExpenseBrandData(
        path: 'lib/src/assets/brands/logo-Expense-ds-white.svg',
        package: 'expense_assets',
        name: 'LogoExpenseDsWhite',
        height: 25,
        width: 112,
      );

  static ExpenseBrandData get squareLogoMdsBlack => ExpenseBrandData(
        path: 'lib/src/assets/brands/square-logo-mds-black.svg',
        package: 'expense_assets',
        name: 'SquareLogoMdsBlack',
        height: 57,
        width: 56,
      );

  static ExpenseBrandData get logoMWhite => ExpenseBrandData(
        path: 'lib/src/assets/brands/logo-m-white.svg',
        package: 'expense_assets',
        name: 'LogoMWhite',
        height: 24,
        width: 24,
      );

  static ExpenseBrandData get logoMdsWhite => ExpenseBrandData(
        path: 'lib/src/assets/brands/logo-mds-white.svg',
        package: 'expense_assets',
        name: 'LogoMdsWhite',
        height: 25,
        width: 55,
      );

  static ExpenseBrandData get logoExpenseBlack => ExpenseBrandData(
        path: 'lib/src/assets/brands/logo-Expense-black.svg',
        package: 'expense_assets',
        name: 'LogoExpenseBlack',
        height: 33,
        width: 108,
      );

  static ExpenseBrandData get squareLogoMdsYellow => ExpenseBrandData(
        path: 'lib/src/assets/brands/square-logo-mds-yellow.svg',
        package: 'expense_assets',
        name: 'SquareLogoMdsYellow',
        height: 57,
        width: 56,
      );

  static ExpenseBrandData get logoExpenseDsBlack => ExpenseBrandData(
        path: 'lib/src/assets/brands/logo-Expense-ds-black.svg',
        package: 'expense_assets',
        name: 'LogoExpenseDsBlack',
        height: 25,
        width: 112,
      );

  static ExpenseBrandData get squareLogoMdsWhite => ExpenseBrandData(
        path: 'lib/src/assets/brands/square-logo-mds-white.svg',
        package: 'expense_assets',
        name: 'SquareLogoMdsWhite',
        height: 57,
        width: 56,
      );

  static ExpenseBrandData get logoMBlack => ExpenseBrandData(
        path: 'lib/src/assets/brands/logo-m-black.svg',
        package: 'expense_assets',
        name: 'LogoMBlack',
        height: 25,
        width: 24,
      );

  static List<ExpenseBrandData> values = [
    ExpenseBrands.logoMdsBlack,
    ExpenseBrands.logoExpenseWhite,
    ExpenseBrands.logoExpenseDsWhite,
    ExpenseBrands.squareLogoMdsBlack,
    ExpenseBrands.logoMWhite,
    ExpenseBrands.logoMdsWhite,
    ExpenseBrands.logoExpenseBlack,
    ExpenseBrands.squareLogoMdsYellow,
    ExpenseBrands.logoExpenseDsBlack,
    ExpenseBrands.squareLogoMdsWhite,
    ExpenseBrands.logoMBlack,
  ];
}
