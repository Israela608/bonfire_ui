class CardItem {
  final String letter;
  final String text;

  const CardItem({
    required this.letter,
    required this.text,
  });

  static List allCardItems = [
    CardItem(
      letter: 'A',
      text: 'The peace in the early mornings',
    ),
    CardItem(
      letter: 'B',
      text: 'The magical golden hours',
    ),
    CardItem(
      letter: 'C',
      text: 'Wind-down time after dinners',
    ),
    CardItem(
      letter: 'D',
      text: 'The serenity past midnight',
    ),
  ];
}
