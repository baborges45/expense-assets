class MudeFlagData {
  final String package;
  final String path;
  final String name;
  final double height;
  final double width;

  MudeFlagData({
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

class MudeFlags {
  static MudeFlagData get elo => MudeFlagData(
        path: 'lib/src/assets/flags/elo.svg',
        package: 'expense_assets',
        name: 'Elo',
        height: 24,
        width: 40,
      );

  static MudeFlagData get visa => MudeFlagData(
        path: 'lib/src/assets/flags/visa.svg',
        package: 'expense_assets',
        name: 'Visa',
        height: 24,
        width: 40,
      );

  static MudeFlagData get masterCard => MudeFlagData(
        path: 'lib/src/assets/flags/master-card.svg',
        package: 'expense_assets',
        name: 'MasterCard',
        height: 24,
        width: 40,
      );

  static List<MudeFlagData> values = [
    MudeFlags.elo,
    MudeFlags.visa,
    MudeFlags.masterCard,
  ];
}
