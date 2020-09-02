import 'package:flutter/material.dart';
import 'package:mediApp/pages/main_page.dart';
import 'package:mediApp/pages/new_survey.dart';
import 'package:mediApp/pages/upload.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    MainPage(),
    NewSurvey(),
    Upload(),
  ];
  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onitemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.green,
            onTap: _onitemTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,
                      color: _selectedIndex == 0 ? Colors.white : Colors.white),
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color:
                            _selectedIndex == 0 ? Colors.white : Colors.white),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add,
                      color: _selectedIndex == 1 ? Colors.white : Colors.white),
                  title: Text(
                    'New Survey',
                    style: TextStyle(
                        color:
                            _selectedIndex == 1 ? Colors.white : Colors.white),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cloud_upload,
                      color: _selectedIndex == 2 ? Colors.white : Colors.white),
                  title: Text(
                    'Upload',
                    style: TextStyle(
                        color:
                            _selectedIndex == 2 ? Colors.white : Colors.white),
                  )),
            ]));
  }
}
