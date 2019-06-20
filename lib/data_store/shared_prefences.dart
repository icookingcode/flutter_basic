import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil{

  static saveNovelUrl(String key,String url) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString(key, url);
  }

  static Future<String> getNovelUrl(String key) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.get(key);
  }

}