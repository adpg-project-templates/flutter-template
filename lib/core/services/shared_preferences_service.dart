import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  // Singleton instance
  static SharedPreferencesService? _instance;
  static SharedPreferences? _preferences;
  
  // Getter para acceder a la instancia directamente
  static SharedPreferencesService get instance {
    if (_instance == null) {
      throw Exception('SharedPreferencesService no ha sido inicializado. Llama a initializeService() en main.dart');
    }
    return _instance!;
  }

  // Private constructor
  SharedPreferencesService._();
  
  // Método para inicializar el servicio (llamar una vez en main.dart)
  static Future<void> initializeService() async {
    SharedPreferences.setMockInitialValues({});
    if (_instance == null) {
      _instance = SharedPreferencesService._();
      _preferences = await SharedPreferences.getInstance();
    }
  }
  
  // Mantener el método getInstance para compatibilidad con código existente
  static Future<SharedPreferencesService> getInstance() async {
    if (_instance == null) {
      await initializeService();
    }
    return _instance!;
  }

  // Save string list - método sincronizado
  Future<bool> setStringList(String key, List<String> value) {
    return _preferences!.setStringList(key, value);
  }

  // Get string list
  List<String>? getStringList(String key) {
    return _preferences?.getStringList(key);
  }

  // Save string - método sincronizado
  Future<bool> setString(String key, String value) {
    return _preferences!.setString(key, value);
  }

  // Get string
  String? getString(String key) {
    return _preferences?.getString(key);
  }

  // Save boolean - método sincronizado
  Future<bool> setBool(String key, bool value) {
    return _preferences!.setBool(key, value);
  }

  // Get boolean
  bool? getBool(String key) {
    return _preferences?.getBool(key);
  }

  // Save integer - método sincronizado
  Future<bool> setInt(String key, int value) {
    return _preferences!.setInt(key, value);
  }

  // Get integer
  int? getInt(String key) {
    return _preferences?.getInt(key);
  }

  // Save double - método sincronizado
  Future<bool> setDouble(String key, double value) {
    return _preferences!.setDouble(key, value);
  }

  // Get double
  double? getDouble(String key) {
    return _preferences?.getDouble(key);
  }

  // Remove data
  Future<bool> remove(String key) async {
    return await _preferences!.remove(key);
  }

  // Clear all data
  Future<bool> clear() async {
    return await _preferences!.clear();
  }
}