import 'copyable.dart';

class GameCharacter implements Copyable {
  int _id;
  String _name;
  int _level;
  String _weapon;

  GameCharacter(this._id, this._name, this._level, this._weapon);

  @override
  GameCharacter clone() => GameCharacter(_id, _name, _level, _weapon);


  int get id => _id;

  String get name => _name;

  int get level => _level;

  String get weapon => _weapon;


  set id(int value) => _id = value;

  set name(String value) => _name = value;

  set level(int value) => _level = value;

  set weapon(String value) => _weapon = value;

  @override
  String toString() =>
      "GameCharacter{id=$_id, name='$_name', level=$_level, weapon='$_weapon'}";
}