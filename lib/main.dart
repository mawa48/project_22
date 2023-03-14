import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/responsive/mobile_screen_layout.dart';
import 'package:flutter_application/responsive/responsive_layout_screen.dart';
import 'package:flutter_application/responsive/web_screen_layout.dart';
import 'package:flutter_application/screens/login_screen.dart';
import 'package:flutter_application/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
      apiKey: 'AIzaSyDTKO7V8BNg0CV7gw-9a9XYucL-uWWYqvU', 
      appId: 'app1:1027176453238:web:f81d03052025a823cebb57Id', 
      messagingSenderId: '1027176453238', 
      projectId: 'instashim-b2f55',
      storageBucket: "instashim-b2f55.appspot.com",
      ),
    );
  }
  else{
    await Firebase.initializeApp(

    );
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(), 
      //   webScreenLayout: WebScreenLayout(),
      //   ),
      home: LoginScreen(),
    );
  }
}
