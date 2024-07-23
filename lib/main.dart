import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onImageTap(String feeling) {
    print("Tapped on $feeling");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/Logo.png', width: 50, height: 45),
                  Image.asset('assets/images/Moody.png', width: 90, height: 50),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notification_add_outlined),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Hello,',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  Text(
                    ' Sara Rose',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'How are you feeling today?',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => onImageTap('love'),
                    child: Image.asset(
                      'assets/images/frame love.png',
                      height: 88,
                      width: 60,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => onImageTap('cool'),
                    child: Image.asset(
                      'assets/images/Frame cool.png',
                      height: 88,
                      width: 60,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => onImageTap('happy'),
                    child: Image.asset(
                      'assets/images/Frame happy.png',
                      height: 88,
                      width: 60,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => onImageTap('sad'),
                    child: Image.asset(
                      'assets/images/Frame sad.png',
                      height: 88,
                      width: 60,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    'Feature',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    'See more >',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 186,
                color: Color(0xffECFDF3),
                padding: EdgeInsets.all(16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildFeatureCard(),
                    SizedBox(width: 20),
                    _buildFeatureCard(),
                    SizedBox(width: 20),
                    _buildFeatureCard(),
                    SizedBox(width: 20),
                    _buildFeatureCard(),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Exercise',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    'See more >',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Image.asset('assets/images/Frame 31.png', width: 160, height: 50),
                  Spacer(),
                  Image.asset('assets/images/Frame 35.png', width: 160, height: 50),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/Frame 35 (1).png', width: 160, height: 50),
                  Spacer(),
                  Image.asset('assets/images/Frame 33.png', width: 160, height: 50),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded,color: Colors.grey,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view,color: Colors.grey,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined,color: Colors.grey,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined,color: Colors.grey,),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget _buildFeatureCard() {
    return Container(
      width: 326,
      height: 186,
      color: Color(0xffECFDF3),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Positive vibes',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                'Boost your mood with',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'positive vibes',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 12,
                    child: Icon(Icons.play_arrow_sharp, color: Colors.white),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '10 mins',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/images/Walking the Dog.png',
            width: 102,
            height: 90,
          ),
        ],
      ),
    );
  }
}