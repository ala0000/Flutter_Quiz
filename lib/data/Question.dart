import '../models/QuizQuestion.dart';

const List<QuizQuestion> questions = [
  QuizQuestion('Quelle entreprise a créé Flutter ?',
      ['Google', 'Microsoft', 'Facebook', 'Apple']),
  QuizQuestion(
      'Quel langage de programmation est utilisé pour développer des applications Flutter ?',
      ['Dart', 'Python', 'JavaScript', 'Kotlin']),
  QuizQuestion(
      'Quelle fonctionnalité de Flutter permet de voir immédiatement les changements dans le code sans redémarrer l'
      'application ?',
      [' Hot Reload', 'Cold Restart', 'Quick Update', 'Instant Refresh']),
  QuizQuestion(
      'Sur quelles plateformes peut-on déployer des applications créées avec Flutter ? ',
      [
        'Android, iOS, web, et desktop',
        'Windows Phone, Symbian, Blackberry, web',
        'iOS, Android seulement',
        'Web uniquement'
      ]),
  QuizQuestion(
      'Qu' 'est-ce que le widget de base dans une application Flutter ?',
      ['Scaffold', 'Frame', 'Structure', 'BaseWidget']),
  QuizQuestion(
      'Quel outil peut être utilisé pour gérer les dépendances et les packages dans un projet Flutter ?',
      [' pubspec.yaml', 'package.json', 'gemfile', 'build.gradle']),
  QuizQuestion(
      'Quelle méthode est utilisée pour démarrer l' 'application Flutter ? ',
      ['runApp()', 'startApp()', 'launchApp()', 'initApp()']),
  QuizQuestion(
      'Comment s’appelle le conteneur qui permet de dessiner des éléments visuels dans Flutter ? ',
      ['Canvas', 'Artist', 'Drawer', 'Painter']),
  QuizQuestion(
      'Quel widget est souvent utilisé pour organiser des éléments en colonnes ou en lignes dans Flutter ?',
      ['Column et Row', 'List et Grid', 'Box et Flex', ' Stack et Flow ']),
  QuizQuestion(
      'Quel est le principal avantage de Flutter par rapport au développement natif ? ',
      [
        'Le développement multiplateforme avec un seul code source ',
        'Meilleure performance sur toutes les plateformes ',
        'Intégration native plus facile',
        'Langage propriétaire unique'
      ])
];
