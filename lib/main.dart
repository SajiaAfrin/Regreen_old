
import 'package:flutter/material.dart';
import 'package:regreen/screens/homepage.dart';
import 'package:regreen/screens/welcome.dart';
// Future<void> main()async {
//    WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
      //  initialRoute: WelcomeScreen.path;
      // routes: {
      //   Homepage.path: (ctx)=> HomeScreen(),
      //   DetailScreen.path: (ctx)=> DetailScreen(),
      //   FavoriteScreen.path: (ctx)=> FavoriteScreen(),
      //   VideoScreen.path: (ctx)=> VideoScreen(),
      // },
    );
  }
}

