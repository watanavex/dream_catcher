import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:dream_catcher/screens/dream_list/dream_list.dart';

import '../test_app.dart';

void main() {
  goldenTest(
    'DreamList',
    fileName: 'dream_list',
    pumpBeforeTest: (tester) async {
      await precacheImages(tester);
    },
    builder: () => GoldenTestGroup(
      scenarioConstraints: const BoxConstraints(
        minWidth: 440,
        maxWidth: 440,
        minHeight: 956,
        maxHeight: 956,
      ),
      children: [
        GoldenTestScenario(
          name: 'Default',
          child: const TestApp(
            child: DreamList(),
          ),
        ),
      ],
    ),
  );
}
