import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

void main() {
  test('I can open my test data', () async {
    String value = await File('test/soup_changes.json').readAsString();
    expect(value,
        startsWith('{"continue":{"rvcontinue":"20220512134520|1087443233"'));
  });

  test('Read the username of the most recent editor of the soup page',
          () async {
        final data = await File('test/soup_changes.json').readAsString();

        final dataAsMap = jsonDecode(data);
        final pageData = dataAsMap["query"]["pages"].entries.first.value;
        final answer = pageData["revisions"][0]["user"];
        expect(answer, 'Kind Tennis Fan');
      });
}