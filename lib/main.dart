import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/Home/home_screen.dart';
import 'Screens/Order/current_order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
          useMaterial3: true,
          textTheme: TextTheme(
          displayLarge: GoogleFonts.sora(),
          displayMedium: GoogleFonts.sora(),
          displaySmall: GoogleFonts.sora(
              fontWeight: FontWeight.bold
          ),
          headlineLarge: GoogleFonts.sora(),
          headlineMedium: GoogleFonts.sora(),
          headlineSmall: GoogleFonts.sora(),
          titleLarge: GoogleFonts.inter(),
          titleMedium: GoogleFonts.inter(),
          titleSmall: GoogleFonts.inter(),
          labelLarge: GoogleFonts.inter(),
          labelMedium: GoogleFonts.inter(),
          labelSmall: GoogleFonts.inter(),
          bodyLarge: GoogleFonts.inter(),
          bodyMedium: GoogleFonts.inter(),
          bodySmall: GoogleFonts.inter(),
        ),
      ),
      home: const MyHomePage(title: 'App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<PersistentBottomNavBarItem> _navBarItems() {
    return [

      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: Color(0xff832A0E),
        activeColorSecondary: Color(0xff832A0E),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: 'Search',
        activeColorPrimary: Color(0xff832A0E),
        activeColorSecondary: Color(0xff832A0E),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.doc_plaintext),
        title: 'Document',
        activeColorPrimary: Color(0xff832A0E),
        activeColorSecondary: Color(0xff832A0E),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: 'Setting',
        activeColorPrimary: Color(0xff832A0E),
        activeColorSecondary: Color(0xff832A0E),
        inactiveColorPrimary: Colors.grey,      ),
    ];
  }
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner: false,
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarItems(),
        // confineInSafeArea: true,
        backgroundColor: Colors.white,
        // handleAndroidBackButtonPress: true,
        // resizeToAvoidBottomInset: true,
        stateManagement: true,
        // hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          // borderRadius: BorderRadius.circular(30.0),
          colorBehindNavBar: Colors.white,
        ),

        // popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      CurrentOrder(),
      HomeScreen(),
      HomeScreen(),
    ];
  }
}
