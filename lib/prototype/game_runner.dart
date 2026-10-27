import 'character_factory.dart';
import 'game_character.dart';

class GameRunner {
  static void run() {
    final original = GameCharacter(1, 'Alpomish', 10, 'Qilich');
    final originalBefore = original.toString();

    final factory = CharacterFactory(original);

    final clone1 = factory.cloneCharacter();
    final clone2 = factory.cloneCharacter();

    clone1.name = 'Rustam';
    clone1.level = 15;
    clone1.weapon = 'Gurz';

    clone2.name = 'Tomiris';
    clone2.level = 20;
    clone2.weapon = 'Kamon';

    print('Original : $original');
    print('Nusxa 1  : $clone1');
    print('Nusxa 2  : $clone2');
    print('');

    print('original == clone1 : ${original == clone1}');
    print('original == clone2 : ${original == clone2}');
    print('clone1   == clone2 : ${clone1 == clone2}');

    print("Original o'zgarmadimi? ${originalBefore == original.toString()}");

    print('');
    factory.setCharacter(clone1);
    final clone3 = factory.cloneCharacter();
    print('Yangi prototipdan nusxa : $clone3');
  }
}

void main() {
  GameRunner.run();
}