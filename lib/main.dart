import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uts/page/Favorite_page.dart';
import 'package:uts/page/navbar.dart';
import 'package:uts/page/profile_page.dart';
import 'package:uts/page/splash.dart';
import 'package:uts/page/home_page.dart';
import 'package:uts/page/login.dart';
import 'package:uts/page/sign.dart';
import 'package:get/get.dart';
import 'package:uts/domain/homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyCzB67DnxZCRk7h5bLv5DTxgDCytFVgom8',
        appId: '1:349081410650:web:14d06ff58a63788a0f8c63',
        messagingSenderId: '349081410650',
        projectId: 'utss-7f6cc',
        authDomain: 'utss-7f6cc.firebaseapp.com',
        storageBucket: 'utss-7f6cc.appspot.com',
        measurementId: 'G-1LN40Q79V0',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen(child: LoginPage())),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/signUp', page: () => SignUpPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/navbar', page: () => Navbars()),
        GetPage(name: '/profile', page: () => Profile()),
        GetPage(name: '/favorite', page: () => FavoritePage()),
        GetPage(name: '/search', page:() => Homies()),
      ],
    );
  }
}
