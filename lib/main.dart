// import 'package:bbuild/models/product.dart';
import 'package:bbuild/Authentication/userOrLoginPage.dart';
import 'package:bbuild/firebase_options.dart';
// import 'package:bbuild/login.dart';
import 'package:bbuild/providers/all_product.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:bbuild/Authentication/auth.dart';
// import 'package:bbuild/Authentication/userOrLoginPage.dart';
import 'package:bbuild/IsiDashboard/ItemPage.dart';
import 'package:bbuild/IsiTaskbar/ruangan.dart';
import 'package:bbuild/dashboard.dart';
import 'package:bbuild/Keranjang/keranjang.dart';
import 'package:bbuild/historipemesanan.dart';
import 'package:provider/provider.dart';

import 'Authentication/repository/Authentication_repository/auth_repository.dart';

// import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.light),
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode: ThemeMode.system,
        home: const home(),
        routes: {
          ItemPage.routeName: (context) => ItemPage(),
        },
      ),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _MainPageState();
}

class _MainPageState extends State<home> {
  int index = 0;
  final screens = [
    const dashboard(),
    const Ruangan(),
    const userORlogin(),
    const Keranjang(),
    const HistoriPemesanan(),
  ];
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).platformBrightness == Brightness.dark;
    // var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: const Color.fromARGB(255, 255, 229, 93),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 255, 229, 93),
            ),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(
                LineAwesomeIcons.home,
                color: Color.fromARGB(255, 255, 229, 93),
              ),
              selectedIcon: Icon(
                LineAwesomeIcons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                LineAwesomeIcons.list,
                color: Color.fromARGB(255, 255, 229, 93),
              ),
              selectedIcon: Icon(
                LineAwesomeIcons.list,
                color: Colors.black,
              ),
              label: 'Kategori',
            ),
            NavigationDestination(
              icon: Icon(
                LineAwesomeIcons.user_circle,
                color: Color.fromARGB(255, 255, 229, 93),
              ),
              selectedIcon: Icon(
                LineAwesomeIcons.user_circle,
                color: Colors.black,
              ),
              label: 'Akun',
            ),
            NavigationDestination(
              icon: Icon(
                LineAwesomeIcons.shopping_cart,
                color: Color.fromARGB(255, 255, 229, 93),
              ),
              selectedIcon: Icon(
                LineAwesomeIcons.shopping_cart,
                color: Colors.black,
              ),
              label: 'Keranjang',
            ),
            NavigationDestination(
              icon: Icon(
                LineAwesomeIcons.history,
                color: Color.fromARGB(255, 255, 229, 93),
              ),
              selectedIcon: Icon(
                LineAwesomeIcons.history,
                color: Colors.black,
              ),
              label: 'History',
            )
          ],
        ),
      ),
    );
  }
}
