// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:xml/xml.dart';
import 'package:yaml/yaml.dart';

void main() {
  List<GenerateClass> list = [
    GenerateClass(
      name: 'Icons',
      fileExports: 'lib/src/icons.dart',
      directory: 'lib/src/assets/icons',
      prefixClass: 'Icons',
      prefixClassData: 'IconData',
    ),
    GenerateClass(
      name: 'Brands',
      fileExports: 'lib/src/brands.dart',
      directory: 'lib/src/assets/brands',
      prefixClass: 'Brands',
      prefixClassData: 'BrandData',
    ),
    GenerateClass(
      name: 'Flags',
      fileExports: 'lib/src/flags.dart',
      directory: 'lib/src/assets/flags',
      prefixClass: 'Flags',
      prefixClassData: 'FlagData',
    ),
  ];

  for (var g in list) {
    generated(g);
  }
}

void generated(GenerateClass generate) {
  final fileExports = generate.fileExports;
  final directory = Directory(generate.directory);
  final List<String> list = [];
  final List<String> listValues = [];

  String getNamePackage() {
    File file = File('pubspec.yaml');
    String yamlString = file.readAsStringSync();

    var yamlMap = loadYaml(yamlString);
    return yamlMap['name'];
  }

  String getName(String pathfile) {
    String name = path.basename(pathfile).replaceAll('.svg', '');
    List<String> parts = name.split("-");
    String output = "";

    // join words to first letter uppercase
    for (String part in parts) {
      output += part[0].toUpperCase() + part.substring(1);
    }

    // separeted underline?
    if (output.contains('_')) {
      List<String> outparts = output.split('_');
      output = '';
      for (String part in outparts) {
        output += part[0].toUpperCase() + part.substring(1);
      }
    }

    return output;
  }

  String getPrefix(String name) {
    String prefix = name.split('_')[0];
    return prefix[0].toUpperCase() + prefix.substring(1);
  }

  SizeSvg getSizeSvg(File svg) {
    File arquivoSvg = svg;

    String conteudo = arquivoSvg.readAsStringSync();

    XmlDocument documento = XmlDocument.parse(conteudo);
    XmlElement svgElemento = documento.rootElement;

    String? height = svgElemento.getAttribute('height');
    String? width = svgElemento.getAttribute('width');

    return SizeSvg(
      height: height,
      width: width,
    );
  }

  void updateFileExport(String content) {
    final file = File(fileExports);
    file.readAsStringSync();
    file.writeAsStringSync(content, mode: FileMode.write);

    print('Geração de ${generate.name} finalizada!');
  }

  String namePackage = getNamePackage();
  String nameClass = '${getPrefix(namePackage)}${generate.prefixClass}';
  String nameClassData = '${getPrefix(namePackage)}${generate.prefixClassData}';

  listValues.add("""
  \n
  static List<$nameClassData> values = [
  """);

  list.add("""
  class $nameClassData {
    final String package;
    final String path;
    final String name;
    final double height;
    final double width;

    $nameClassData({
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
  
  class $nameClass {
  """);

  directory.listSync().forEach((entity) {
    if (entity is File && entity.path.endsWith('.svg')) {
      String name = getName(entity.path);

      SizeSvg sizes = getSizeSvg(entity);

      list.add("""
        static $nameClassData get ${name.camalize()} => $nameClassData(
          path: '${entity.path}',
          package: '$namePackage',
          name: '$name',
          height: ${sizes.height},
          width: ${sizes.width},
        );\n""");

      listValues.add('  $nameClass.${name.camalize()},');
    }
  });

  String n = '\n';
  updateFileExport([
    list.join(n),
    listValues.join(n),
    '$n];$n',
    '}',
  ].join(''));
}

class GenerateClass {
  final String name;
  final String directory;
  final String fileExports;
  final String prefixClass;
  final String prefixClassData;

  GenerateClass({
    required this.name,
    required this.directory,
    required this.fileExports,
    required this.prefixClass,
    required this.prefixClassData,
  });
}

class SizeSvg {
  final String? height;
  final String? width;

  SizeSvg({required this.height, required this.width});
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String camalize() {
    return "${this[0].toLowerCase()}${substring(1)}";
  }
}
