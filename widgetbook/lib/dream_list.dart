import 'package:dream_catcher/image_source.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:dream_catcher/screens/dream_list/dream_list.dart';
import 'package:dream_catcher/screens/dream_list/components/horizontal_card.dart';

@widgetbook.UseCase(
    name: 'Default',
    type: DreamList,
    designLink:
        'https://www.figma.com/design/nx2jE80GN39AY4D4U0X0iW/DreamCatcher?node-id=3-1794')
Widget buildDreamListUseCase(BuildContext context) {
  return const DreamList();
}

@widgetbook.UseCase(
    name: 'Horizontal Card',
    type: HorizontalCard,
    designLink:
        'https://www.figma.com/design/yzQxVZgqqcCmWjXOeUxIjh/FlutterKaigi-2024_Material-3-Design-Kit-(Community)?node-id=52350-27877')
Widget buildHorizontalCardUseCase(BuildContext context) {
  return HorizontalCard(
    title: '空を飛ぶ夢',
    description: 'なぜかみんな普通に空を飛べるようになっていた',
    imageSource: Asset('media.png'),
    onTap: () {},
  );
}
