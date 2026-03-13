import 'dart:io';
import 'dart:convert';

void postLyrics(
  String track,
  String artist,
  var token,
  String typeofpost,
) async {
  var client = HttpClient();
  try {
    HttpClientRequest request = await client.postUrl(
      Uri(
        scheme: "https",
        host: "apic-desktop.musixmatch.com",
        path: "/ws/1.1/$typeofpost",
        //блет, как делать полезную нагрузку?
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
    print(stringData);
  } finally {
    client.close();
  }
}
