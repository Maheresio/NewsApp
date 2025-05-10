import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ApiConstants {
  static String get _apiKey => dotenv.env['NEWS_API_KEY'] ?? '';
  static String get _baseUrl => dotenv.env['NEWS_API_BASE_URL'] ?? '';

  static String get breakingNewsUrl =>
      '$_baseUrl/top-headlines?country=us&apiKey=$_apiKey';
  static String get recommendationUrl =>
      '$_baseUrl/everything?q=keyword&apiKey=$_apiKey';

  static String get discoverNewsUrl =>
      '$_baseUrl/everything?domains=wsj.com&apiKey=$_apiKey';
}
