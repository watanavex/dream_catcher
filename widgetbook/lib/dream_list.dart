import 'package:dream_catcher/image_source.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:dream_catcher/screens/dream_list/dream_list.dart';
import 'package:dream_catcher/screens/dream_list/components/horizontal_card.dart';

@widgetbook.UseCase(name: 'Default', type: DreamList)
Widget buildDreamListUseCase(BuildContext context) {
  return const DreamList();
}

@widgetbook.UseCase(name: 'Horizontal Card', type: HorizontalCard)
Widget buildHorizontalCardUseCase(BuildContext context) {
  return HorizontalCard(
    title: '空を飛ぶ夢',
    description: 'なぜかみんな普通に空を飛べるようになっていた',
    imageSource: Asset('media.png'),
    onTap: () {},
  );
}
