class MudeBrandData {
  final String package;
  final String path;
  final String name;
  final double height;
  final double width;

  MudeBrandData({
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

class MudeBrands {
  static MudeBrandData get logoMdsBlack => MudeBrandData(
        path: 'lib/src/assets/brands/logo-mds-black.svg',
        package: 'expense_assets',
        name: 'LogoMdsBlack',
        height: 25,
        width: 55,
      );

  static MudeBrandData get logoMudeWhite => MudeBrandData(
        path: 'lib/src/assets/brands/logo-mude-white.svg',
        package: 'expense_assets',
        name: 'LogoMudeWhite',
        height: 33,
        width: 108,
      );

  static MudeBrandData get logoMudeDsWhite => MudeBrandData(
        path: 'lib/src/assets/brands/logo-mude-ds-white.svg',
        package: 'expense_assets',
        name: 'LogoMudeDsWhite',
        height: 25,
        width: 112,
      );

  static MudeBrandData get squareLogoMdsBlack => MudeBrandData(
        path: 'lib/src/assets/brands/square-logo-mds-black.svg',
        package: 'expense_assets',
        name: 'SquareLogoMdsBlack',
        height: 57,
        width: 56,
      );

  static MudeBrandData get logoMWhite => MudeBrandData(
        path: 'lib/src/assets/brands/logo-m-white.svg',
        package: 'expense_assets',
        name: 'LogoMWhite',
        height: 24,
        width: 24,
      );

  static MudeBrandData get logoMdsWhite => MudeBrandData(
        path: 'lib/src/assets/brands/logo-mds-white.svg',
        package: 'expense_assets',
        name: 'LogoMdsWhite',
        height: 25,
        width: 55,
      );

  static MudeBrandData get logoMudeBlack => MudeBrandData(
        path: 'lib/src/assets/brands/logo-mude-black.svg',
        package: 'expense_assets',
        name: 'LogoMudeBlack',
        height: 33,
        width: 108,
      );

  static MudeBrandData get squareLogoMdsYellow => MudeBrandData(
        path: 'lib/src/assets/brands/square-logo-mds-yellow.svg',
        package: 'expense_assets',
        name: 'SquareLogoMdsYellow',
        height: 57,
        width: 56,
      );

  static MudeBrandData get logoMudeDsBlack => MudeBrandData(
        path: 'lib/src/assets/brands/logo-mude-ds-black.svg',
        package: 'expense_assets',
        name: 'LogoMudeDsBlack',
        height: 25,
        width: 112,
      );

  static MudeBrandData get squareLogoMdsWhite => MudeBrandData(
        path: 'lib/src/assets/brands/square-logo-mds-white.svg',
        package: 'expense_assets',
        name: 'SquareLogoMdsWhite',
        height: 57,
        width: 56,
      );

  static MudeBrandData get logoMBlack => MudeBrandData(
        path: 'lib/src/assets/brands/logo-m-black.svg',
        package: 'expense_assets',
        name: 'LogoMBlack',
        height: 25,
        width: 24,
      );

  static List<MudeBrandData> values = [
    MudeBrands.logoMdsBlack,
    MudeBrands.logoMudeWhite,
    MudeBrands.logoMudeDsWhite,
    MudeBrands.squareLogoMdsBlack,
    MudeBrands.logoMWhite,
    MudeBrands.logoMdsWhite,
    MudeBrands.logoMudeBlack,
    MudeBrands.squareLogoMdsYellow,
    MudeBrands.logoMudeDsBlack,
    MudeBrands.squareLogoMdsWhite,
    MudeBrands.logoMBlack,
  ];
}
