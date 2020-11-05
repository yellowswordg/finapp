import 'package:finapp/models/language.dart';
import 'package:finapp/models/languages.dart';

const Map<Languages, Language> languages = const {
  Languages.english:
      Language(language: 'english', shortName: 'ENG', flag: '🇬🇧'),
  Languages.russian:
      Language(language: 'russian', shortName: 'RUS', flag: '🇷🇺'),
  Languages.finnish:
      Language(language: 'finnish', shortName: 'FIN', flag: '🇫🇮'),
  Languages.german: Language(language: 'german', shortName: 'DE', flag: '🇩🇪'),
  Languages.french: Language(language: 'french', shortName: 'FR', flag: '🇫🇷'),
};
