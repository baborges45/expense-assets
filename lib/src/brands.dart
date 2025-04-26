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

        static ExpenseBrandData get logoMudeWhite => ExpenseBrandData(
          path: 'lib/src/assets/brands/logo-mude-white.svg',
          package: 'expense_assets',
          name: 'LogoMudeWhite',
          height: 33,
          width: 108,
        );

        static ExpenseBrandData get logoMudeDsWhite => ExpenseBrandData(
          path: 'lib/src/assets/brands/logo-mude-ds-white.svg',
          package: 'expense_assets',
          name: 'LogoMudeDsWhite',
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

        static ExpenseBrandData get logoMudeBlack => ExpenseBrandData(
          path: 'lib/src/assets/brands/logo-mude-black.svg',
          package: 'expense_assets',
          name: 'LogoMudeBlack',
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

        static ExpenseBrandData get logoMudeDsBlack => ExpenseBrandData(
          path: 'lib/src/assets/brands/logo-mude-ds-black.svg',
          package: 'expense_assets',
          name: 'LogoMudeDsBlack',
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
  ExpenseBrands.logoMudeWhite,
  ExpenseBrands.logoMudeDsWhite,
  ExpenseBrands.squareLogoMdsBlack,
  ExpenseBrands.logoMWhite,
  ExpenseBrands.logoMdsWhite,
  ExpenseBrands.logoMudeBlack,
  ExpenseBrands.squareLogoMdsYellow,
  ExpenseBrands.logoMudeDsBlack,
  ExpenseBrands.squareLogoMdsWhite,
  ExpenseBrands.logoMBlack,
];
}