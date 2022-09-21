import 'package:test/test.dart';


void main() {
  test('This is the query url for ""', () {
    String searchTerm = WikipediaURLBuilder().searchTermToUrl('');
    String expected =
        '';
    expect(searchTerm, expected);
  });
}