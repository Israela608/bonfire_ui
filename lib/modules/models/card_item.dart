import 'package:stroll_demo/core/constants/strings.dart';

class CardItem {
  final String letter;
  final String text;

  const CardItem({
    required this.letter,
    required this.text,
  });

  static List allCardItems = [
    CardItem(
      letter: Strings.letterA,
      text: Strings.peaceMorning,
    ),
    CardItem(
      letter: Strings.letterB,
      text: Strings.magicalHours,
    ),
    CardItem(
      letter: Strings.letterC,
      text: Strings.windDown,
    ),
    CardItem(
      letter: Strings.letterD,
      text: Strings.serenity,
    ),
  ];
}
