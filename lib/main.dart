import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_book/Login/login_screen.dart';
import 'package:flutter_book/home.dart';
import 'package:flutter_book/data.dart';
import 'package:flutter_book/detail.dart';
import 'package:flutter/material.dart';
import 'authentication_service.dart';

import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // 2
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        // 3
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanges, 
          initialData: null,
        )
      ],
      child: MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.purple,
        platform: TargetPlatform.iOS,
      ),
      home: LoginScreen(),
      onGenerateRoute: (settings) => generateRoute(settings),
    )
  );
}

  ///Generate parameterized route --> e.g: detail/some book title
  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }
}
class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseuser = context.watch<User>();
    if (firebaseuser != null) {
        return Home();
      } 
      return LoginScreen();
  }
}
