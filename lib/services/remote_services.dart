import 'package:learn/models/Programs.dart';
import 'package:http/http.dart' as http;


class RemoteService{
  Future<List<Item>?> getPrograms() async{
    var client = http.Client();

    var uri=Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs');
    var response =await client.get(uri);
    if(response.statusCode==200){
      var json=response.body;
      Programs program =programsFromJson(json);
      return program.items;
    }
    else{
      return null;
    }
  }

}