import 'package:chirpp/pages/blocs/login_bloc/login_bloc_bloc.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../blocs/search_bloc/search_bloc.dart';
import 'home_page.dart';
import 'search_page.dart';
import 'settings_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xFF40A858),
      child: SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFF40A858),
          body: IndexedStack(
            index: _pageIndex,
            children: [
               HomePage(
                searchBloc: SearchBloc(),
               ),
             const SearchPage(),
              const SettingsPage(),
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
            items: const [
              Icon(Icons.home , color: Colors.white,),
              Icon(Icons.search , color: Colors.white,),
              Icon(Icons.settings , color: Colors.white,),
            ],
            backgroundColor:  Colors.white,
            onTap: (value) {
              setState(() {
                _pageIndex = value;
              });
            },
            buttonBackgroundColor:const Color(0xFF40A858),
            color:const Color(0xFF40A858),
          ),
        ),
      ),
    );
  }
}