import 'package:http/http.dart' as http;

class APIService{
  getVideos()async{
    String _path = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyCL0qPSwxPY9WE59Qwr7c6gxuTcFCLi_co&maxResults=20&regionCode=PE";
    Uri _uri = Uri.parse(_path);
    

    http.Response response = await http.get(_uri);
    print(response.statusCode);
    print(response.body);

  }
}