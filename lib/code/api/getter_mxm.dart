import 'dart:io';
import 'dart:convert';

//сборник переменных
var client = HttpClient();

Future<String> getLyrics(
  String track,
  String artist,
  var token,
  String typeofget,
) async {
  HttpClientRequest request = await client.getUrl(
    Uri(
      scheme: "https",
      host: "apic-desktop.musixmatch.com",
      path: "/ws/1.1/$typeofget",
      queryParameters: {
        "app_id": "web-desktop-app-v1.0",
        "usertoken": token,
        "q_track": track,
        "q_artist": artist,
      },
    ),
  );
  HttpClientResponse response = await request.close();
  final stringData = await response.transform(utf8.decoder).join();
  return stringData;

  client.close();
}
