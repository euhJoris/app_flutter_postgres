# tl draw helper
https://www.tldraw.com/r/v2_ZwX2hbyEetX6fSnWFMunU?viewport=97%2C12%2C1366%2C687&page=page%3AFGRDvEJoxYR_Sn7fsArYQ


lib/
|- data/
|  |- database/
|  |  |- database_helper.dart
|  |
|  |- repositories/
|     |- user_repository.dart
|     |- product_repository.dart
|
|- models/
|  |- user.dart
|  |- product.dart
|
|- screens/
|  |- home_screen.dart
|  |- profile_screen.dart
|
|- utils/
|  |- app_constants.dart
|  |- validators.dart
|
|- main.dart


*main.dart*: Le point d'entrée de l'application.

Le dossier **data** qui contient les fichiers liés à la gestion des données. À l'intérieur du dossier data, nous avons deux sous-dossiers :

**database/**: Ce sous-dossier contient les fichiers liés à la gestion de la base de données. Par exemple, le fichier *database_helper.dart* peut contenir des fonctions pour initialiser la base de données, effectuer des opérations CRUD, etc.

**repositories/** : Ce sous-dossier contient les fichiers de repository. Un repository est responsable de la communication avec la base de données pour récupérer, stocker, mettre à jour et supprimer des données. Par exemple, le fichier *user_repository.dart* peut contenir des fonctions pour récupérer les utilisateurs à partir de la base de données, ajouter un nouvel utilisateur, mettre à jour les informations d'un utilisateur, etc.

**models/** : Ce dossier contient les classes de modèles qui représentent les données de l'application. Par exemple, vous pouvez avoir un fichier "*user.dart*" pour définir la classe User.

**services/** : Ce dossier contient les classes de services utilisées pour gérer les requêtes API, les bases de données, l'authentification, etc. Par exemple, vous pouvez avoir un fichier "*api_service.dart*" pour gérer les appels à une API.

**screens/** : Ce dossier contient les écrans de l'application. Chaque écran a son propre fichier. Par exemple, vous pouvez avoir un fichier "*home_screen.dart*" pour l'écran d'accueil et un fichier "profile_screen.dart" pour l'écran de profil.

**widgets/** : Ce dossier contient les widgets réutilisables de l'application. Les widgets sont des éléments d'interface utilisateur qui peuvent être utilisés dans plusieurs écrans ou composants. Par exemple, vous pouvez avoir un fichier "button_widget.dart" pour définir un widget de bouton personnalisé et un fichier "*text_input_widget.dart*" pour définir un widget de champ de texte personnalisé.

**utils/** : Ce dossier contient des fichiers utilitaires tels que des constantes, des fonctions d'aide, des conversions, etc. Par exemple, vous pouvez avoir un fichier "*constants.dart*" pour définir des constantes utilisées dans toute l'application et un fichier "helpers.dart" pour définir des fonctions utilitaires.