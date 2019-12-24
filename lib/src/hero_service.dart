import 'dart:async'; // defines Future

import 'hero.dart';
import 'mock_heroes.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
  // getAll() signature is synchronous, returns list immidiately
  // async sets return type to Future

  Future<Hero> get(int id) async =>
    (await getAll()).firstWhere((hero) => hero.id == id);
}