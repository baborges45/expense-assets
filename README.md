# Mude Flutter Assets

Biblioteca `assets` do `Design System` responsável por conter todos os ícones, imagens e outros recursos do Design System.

## Índice

- [Visao Geral](#visão-geral)
- [Arquitetura de Arquivos e Pastas](#arquitetura-de-arquivos-e-pastas)
- [Adicionando ou Modificando Assets](#adicionando-ou-modificando-assets)
- [Dependências](#dependências)

## Visão Geral

Esta biblioteca é utilizada como dependência da `lib core`.

## Arquitetura de Arquivos e Pastas

Veja como ficou a organização das pastas e a importância de cada uma dentro do projeto.

```js
├── src
│   ├── assets
│       ├── brands
│       ├── flags
│       ├── icons
│   ├── brands.dart
│   ├── flags.dart
│   ├── icons.dart
```

| Nome       | Função                                                                 |
| ---------- | ---------------------------------------------------------------------- |
| assets     | Agrupar todos os grupos de arquivos `.svg` que compõem os componentes  |
| brand.dart | Disponibilizar assets do tipo `brand` (arquivo gerado automaticamente) |
| flags.dart | Disponibilizar assets do tipo `flag` (arquivo gerado automaticamente)  |
| icons.dart | Disponibilizar assets do tipo `icon` (arquivo gerado automaticamente)  |

> Caso queira adicionar um novo grupo de assets, basta criar uma nova pasta dentro de [src/assets](/lib/src/assets) e modificar o script [generate_class.dart](generate_class.dart) para gerar o arquivo de disponibilização automaticamente. Veja mais detalhes no próximo tópico.

## Adicionando ou Modificando Assets

Veja como é fácil adicionar ou modificar os assets dentro da `lib assets`:

1 - Adicione ou modifique o asset dentro da sua respectiva pasta (brands, flags, icons, etc).

2 - No terminal, execute o seguinte script:

```sh
dart generate_class.dart
```

> O script [generate_class.dart](generate_class.dart) pode ser alterado conforme a necessidade.

Ao executar, o script irá ler todos os arquivos `*.svg` dentro de cada pasta e gerar o arquivo de disponibilização para cada uma no padrão esperado pela `lib core`.

> ⚠️ Ao renomear um arquivo de asset, sua nomenclatura refletirá diretamente nos componentes da `lib core`. Sempre que possível, revisite os componentes para verificar se há algum ajuste a ser feito.

## Dependências

| Biblioteca                                          | Versão | Função                  |
| --------------------------------------------------- | ------ | ----------------------- |
| [flutter_svg](https://pub.dev/packages/flutter_svg) | ^2.0.1 | Exibir arquivos em svgs |
