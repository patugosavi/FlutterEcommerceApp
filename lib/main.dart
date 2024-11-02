import 'package:ecommerceapp/Provider/cart_provider.dart';
import 'package:ecommerceapp/Provider/favorite_provider.dart';
import 'package:ecommerceapp/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => CartProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => FavoriteProvider(),
            ),
          ],
          child: Builder(builder: (context) {
            return ScreenUtilInit(
              designSize: const Size(
                  430, 932), // Typical size for mobile design (iPhone 11 Pro)
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    colorScheme:
                        ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: true,
                  ),
                  home: const BottomNavBar(),
                );
              },
            );
          }));
}
