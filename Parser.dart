import 'package:http/http.dart' as http;
import 'package:beautiful_soup_dart/beautiful_soup.dart';

class TestParse {
  excuteSample() async {
    var url = Uri.parse('');
    var response = await http.get(url);
    BeautifulSoup bs = BeautifulSoup(response.body);
    final allHeaderName = bs.findAll('td', attrs: {'class': 'oben'});
    allHeaderName.forEach((element) {
      print('the header: ${element.text}');
    });
  }
}