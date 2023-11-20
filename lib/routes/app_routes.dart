import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/splashscreenone_screen/splashscreenone_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/splashscreentow_screen/splashscreentow_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/splashscreentree_screen/splashscreentree_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/connexion_page_screen/connexion_page_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/verification_numero_screen/verification_numero_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/info_du_profil_screen/info_du_profil_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/abonnement_screen/abonnement_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/chats_container_screen/chats_container_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/chat_screen/chat_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/accueil_screen/accueil_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/accueil_categories_screen/accueil_categories_screen.dart';
import 'package:ibrahima_s_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String splashscreenoneScreen = '/splashscreenone_screen';

  static const String splashscreentowScreen = '/splashscreentow_screen';

  static const String splashscreentreeScreen = '/splashscreentree_screen';

  static const String connexionPageScreen = '/connexion_page_screen';

  static const String verificationNumeroScreen = '/verification_numero_screen';

  static const String infoDuProfilScreen = '/info_du_profil_screen';

  static const String abonnementScreen = '/abonnement_screen';

  static const String chatsPage = '/chats_page';

  static const String chatsContainerScreen = '/chats_container_screen';

  static const String chatScreen = '/chat_screen';

  static const String accueilScreen = '/accueil_screen';

  static const String accueilCategoriesScreen = '/accueil_categories_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashscreenScreen: SplashscreenScreen.builder,
        splashscreenoneScreen: SplashscreenoneScreen.builder,
        splashscreentowScreen: SplashscreentowScreen.builder,
        splashscreentreeScreen: SplashscreentreeScreen.builder,
        connexionPageScreen: ConnexionPageScreen.builder,
        verificationNumeroScreen: VerificationNumeroScreen.builder,
        infoDuProfilScreen: InfoDuProfilScreen.builder,
        abonnementScreen: AbonnementScreen.builder,
        chatsContainerScreen: ChatsContainerScreen.builder,
        chatScreen: ChatScreen.builder,
        accueilScreen: AccueilScreen.builder,
        accueilCategoriesScreen: AccueilCategoriesScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashscreenScreen.builder
      };
}
