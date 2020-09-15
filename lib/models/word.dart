class Word {
  String finnish;
  String english;
  String russian;
  int chapter;
  Word({
    this.finnish,
    this.english,
    this.russian,
    this.chapter,
  });
}

// "finnish": "raha",
// "English": "money",
// "Russian": "деньги",
// "Chapter": 2

List<Word> words = [
  Word(finnish: "raha", english: 'money', russian: 'деньги', chapter: 2),
  Word(
      finnish: "Mitä tämä maksaa?",
      english: 'How much does this cost?',
      russian: 'Сколько это стоит',
      chapter: 2),
  Word(finnish: "euro", english: 'euro', russian: 'евро', chapter: 2),
  Word(finnish: "sentti", english: 'money', russian: 'деньги', chapter: 2),
  Word(finnish: "raha", english: 'cent', russian: 'цент', chapter: 2),
  Word(finnish: "seteli", english: 'money', russian: 'деньги', chapter: 2),
  Word(
      finnish: "raha",
      english: 'note, bill',
      russian: 'денежный знак, купюра',
      chapter: 2),
  Word(finnish: "kolikko", english: 'coin', russian: 'монета', chapter: 2),
  Word(
      finnish: "toissapäivänä",
      english: 'day before yesterday',
      russian: 'позавчера',
      chapter: 1),
  Word(
      finnish: "ylihuomenna",
      english: 'day after tomorrow',
      russian: 'послезавтра',
      chapter: 1),
  Word(
      finnish: "Hyvää iltaa!",
      english: 'Good evening!',
      russian: 'Добрый вечер!',
      chapter: 1),
  Word(finnish: "Hei", english: 'Hello!', russian: 'Привет!', chapter: 1),
  Word(finnish: "Näkemiin!", english: 'Goodbye!', russian: 'Пока!', chapter: 1),
  Word(finnish: "Ei", english: 'No', russian: 'Нет', chapter: 1),
  Word(finnish: "Kyllä", english: 'Yes', russian: 'Да', chapter: 1),
  Word(
      finnish: "Ei kestä!",
      english: 'You’re welcome!',
      russian: 'Не за что!',
      chapter: 1),
  Word(
      finnish: "Anteeksi!",
      english: 'Sorry!',
      russian: 'Простите!',
      chapter: 1),
];
