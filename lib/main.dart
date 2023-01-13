// import 'package:bank_sathi/Controller/Local_Notification_Controller.dart';
import 'package:bank_sathi/Screens/OnBoarding/SplashScreen.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
// import 'package:firebase_core/firebase_core.dart';

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // LocalNotification.initialize();
    // // For Forground State ( NOTIFICATION )
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   LocalNotification.showNotification(message);
    // });
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return GetMaterialApp(
        home: SplashScreen(),
        navigatorKey: navKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Nunito Sans'),
      );
    });
  }
}
