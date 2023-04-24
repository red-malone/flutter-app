import 'package:learn/models/Lessons.dart';
import 'package:http/http.dart' as http;


class LessonsService{
  Future<List<Items>?> getLessons() async{
    var client = http.Client();

    var uri=Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons');
    var response =await client.get(uri);
    if(response.statusCode==200){
      var json=response.body;
      Lessons lessons =lessonsFromJson(json);
      return lessons.items;
    }
    else{
      return null;
    }
  }

}