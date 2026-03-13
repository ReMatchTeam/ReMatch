import 'dart:io';
import 'dart:convert';

void main() async {
  var token = "токен тута. нихачу свой давати";
  var client = HttpClient();
  try {
    // создаем запрос
    HttpClientRequest request = await client.getUrl(
      Uri(
        scheme: "https",
        host: "apic-desktop.musixmatch.com",
        path: "/ws/1.1/macro.subtitles.get",
        queryParameters: {
          "app_id": "web-desktop-app-v1.0",
          "usertoken": token,
          "q_track": "Курим мануал",
          "q_artist": "НТР",
        },
      ),
    );
    // получаем ответ
    HttpClientResponse response = await request.close();
    // обрабатываем ответ
    final stringData = await response.transform(utf8.decoder).join();
    print(stringData);
  } finally {
    client.close();
  }
}
