import 'dart:convert';

import 'package:easy_extension/easy_extension.dart';
import 'package:http/http.dart' as http;
import 'package:news_portal/api/api_config.dart';
import 'package:news_portal/api/models/news_data.dart';

class NewsApi {
  static Future<List<NewsData>?> _getNews(String url) async{
    final result = await http.get(
        Uri.parse(ApiConfig.news.getTopic), //
      ).catchError((e){
        Log.red('뉴스 목록 가져오기 오류: $e');
        return http.Response(e.toString(),400);
      });

      if (result.statusCode != 200) return null;
      
      final body = result.body;
      final bodyJson = jsonDecode(body);
      Log.green(bodyJson);

      final List<dynamic> newsRaw = bodyJson['news'];
      Log.green(newsRaw);

      List<NewsData> newsList = [];

      return newsRaw.map((data) => NewsData.fromMap(data)).toList();
      }
  

  static Future<List<NewsData>?> getTopic() =>
    _getNews(ApiConfig.news.getTopic);

  static Future<List<NewsData>?> getLastest() =>
    _getNews(ApiConfig.news.getIssue);
  

}