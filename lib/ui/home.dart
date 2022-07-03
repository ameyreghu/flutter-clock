import 'package:flutter/material.dart';
import 'package:flutter_clock/ui/pages/alarm_page.dart';
import 'package:flutter_clock/ui/pages/timer_page.dart';
import 'package:flutter_clock/ui/pages/world_clock_page.dart';
import 'package:flutter_clock/ui/widgets/navigatonbar.dart';
import 'package:flutter_clock/ui/widgets/drawer.dart';
import './pages/clock_page.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _pages = const [
    ClockPage(),
    AlarmPage(),
    TimerPage(),
    WorldClockPage(),
  ];
  static const List<String> _titles = ['Clock', 'Alarm', 'Timer', 'World'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFF2D2F41),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          _titles[_selectedIndex],
          style: const TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      drawer: drawer(context),
      body: PageView(
        controller: _pageController,
        children: _pages,
        allowImplicitScrolling: true,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar:
          buildNavigationBar(_selectedIndex, _onNavigationBarClicked),
    ));
  }

  _onNavigationBarClicked(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }
}
