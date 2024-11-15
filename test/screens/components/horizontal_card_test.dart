import 'package:alchemist/alchemist.dart';
import 'package:dream_catcher/image_source.dart';
import 'package:flutter/material.dart';
import 'package:dream_catcher/screens/dream_list/components/horizontal_card.dart';

void main() async {
  await goldenTest(
    'HorizontalCard',
    fileName: 'horizontal_card',
    builder: () => GoldenTestGroup(
      scenarioConstraints: const BoxConstraints(
        minWidth: 380,
        maxWidth: 380,
        minHeight: 90,
        maxHeight: 90,
      ),
      children: [
        GoldenTestScenario(
          name: 'Default',
          child: HorizontalCard(
            title: '着ぐるみを着て競争する夢',
            description: '巨大なウサギの着ぐるみを着せられ、見知らぬ動物たちと広大な迷路で競争することに。',
            imageSource: Asset('assets/media.png'),
            onTap: () {
              debugPrint('Tapped today\'s dream.');
            },
          ),
        ),
      ],
    ),
  );
}
