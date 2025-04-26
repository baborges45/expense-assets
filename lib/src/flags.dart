  class ExpenseFlagData {
    final String package;
    final String path;
    final String name;
    final double height;
    final double width;

    ExpenseFlagData({
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
  
  class ExpenseFlags {
  
        static ExpenseFlagData get elo => ExpenseFlagData(
          path: 'lib/src/assets/flags/elo.svg',
          package: 'expense_assets',
          name: 'Elo',
          height: 24,
          width: 40,
        );

        static ExpenseFlagData get visa => ExpenseFlagData(
          path: 'lib/src/assets/flags/visa.svg',
          package: 'expense_assets',
          name: 'Visa',
          height: 24,
          width: 40,
        );

        static ExpenseFlagData get masterCard => ExpenseFlagData(
          path: 'lib/src/assets/flags/master-card.svg',
          package: 'expense_assets',
          name: 'MasterCard',
          height: 24,
          width: 40,
        );
  

  static List<ExpenseFlagData> values = [
  
  ExpenseFlags.elo,
  ExpenseFlags.visa,
  ExpenseFlags.masterCard,
];
}