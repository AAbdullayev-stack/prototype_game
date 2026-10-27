import 'game_character.dart';

class CharacterFactory {
  GameCharacter _prototype;

  CharacterFactory(this._prototype);

  void setCharacter(GameCharacter prototype) {
    _prototype = prototype;
  }

  GameCharacter cloneCharacter() => _prototype.clone();
}