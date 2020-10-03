import 'question.dart';

class Quiz {
  List<Question> _questions = [
    Question('The first tea bags were made of silk.', true),
    Question('The best type of water for tea is twice-boiled water.', false),
    Question('Chai tea comes from Russia.', false),
    Question(
        'Horses, ponies, donkeys, mules, and zebras are also known as equines.',
        true),
    Question('The first domesticated animal was the horse.', false),
    Question(
        'Coffee became a popular drink in North America when the Boston Tea Party made tea hard to come by.',
        true),
    Question(
        'Most of the world’s coffee in the world is produced in Brazil.', true),
    Question(
        'The first international match of cricket was held between the United States of America and Canada.',
        true),
    Question('The Bible has 74 books in total.', false),
    Question('Jesus Christ was born in Nazareth.', false),
    Question(
        'Flynn Rider, a fictional Disney character appearing in the film Rapunzel, was wanted for stealing a crown.',
        true),
    Question(
        'Some of Disney’s films that are based upon fairy tales come from the Brothers Grimm.',
        true),
    Question(
        'The founding member of The Beatles, an English rock band, was Paul McCartney.',
        false),
    Question('The original name of The Beatles was the Quarrymen.', true),
    Question('The Beatles’ debut studio album is known as “Help!”', false),
    Question(
        'The first person to portray James Bond in a film was Sean Connery.',
        true),
    Question(
        'The title of the first 3D film to be released worldwide was Forbidden Lover.',
        false),
    Question('There are four bases in baseball.', true),
    Question(
        'The United States of America declared Christmas a federal holiday in 1936.',
        false),
    Question('Candy canes were made to represent shepherd’s canes.', true),
    Question('Rudolph the reindeer first appeared in 1939.', true),
    Question(
        'Robert Baratheon was the reigning king of Westeros at the start of the Game of Thrones.',
        true),
    Question(
        'The main religion of the Seven Kingdoms is the Faith of the Seven.',
        true),
    Question(
        'The Richter scale classifies hurricanes into 5 categories.', false),
    Question('The cumulonimbus cloud most frequently forms tornadoes.', true),
    Question('The word “yoga” is derived from a Sanskrit word meaning posture.',
        false),
    Question('Yoga originates from the country of Bangladesh.', false),
    Question(
        'Dharma refers to the duty of a person to maintain harmony in the world.',
        true),
    Question('Harry Potter, a fictional character, was born on June 1, 1990.',
        false),
    Question('James Potter was one of the four creators of the Marauder’s Map.',
        true),
    Question('The driest place on Earth is the Sahara Desert.', false),
    Question('The world’s largest continent is Antarctica.', false),
  ];

  void shuffle() {
    this._questions.shuffle();
  }

  String getQuestionText(int index) {
    return this._questions[index].text;
  }

  bool getCorrectAnswer(int index) {
    return this._questions[index].answer;
  }
}
