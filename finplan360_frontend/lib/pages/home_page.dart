import 'package:finplan360_frontend/components/my_button.dart';
import 'package:finplan360_frontend/constants/ip.dart';
import 'package:finplan360_frontend/constants/routes.dart';
import 'package:finplan360_frontend/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:finplan360_frontend/pages/register_page.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({
    super.key,
    required this.username,
  });

  @override
  State<HomePage> createState() => _HomePageState(username);
}

class _HomePageState extends State<HomePage> {
  final String username;
  _HomePageState(this.username);

  // text editing controllers

  bool _isloading = false;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<String> _logoutuser() async {
    try {
      var response = await http.post(Uri.parse("http://$ip/api/logout"),
          body: {'username': widget.username});

      var result = jsonDecode(response.body);
      print(result['response']);

      if (result['response'] == 'logged out') {
        //route to login page
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => LoginPage(
                      isFromAuthPage: false,
                      isFromSalaryPage: true,
                    )),
            (route) => false);
      }
    } catch (e) {
      print("Error is $e ");
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FinPlan360'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () async {
              _logoutuser();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: <Widget>[
            // First item content
            Center(
              child: Text('Pie Chart Content'),
            ),
            // Second item content
            Center(
              child: Text('Bar Chart Content'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Pie Chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Bar Chart',
          ),
        ],
      ),
    );
  }
}
