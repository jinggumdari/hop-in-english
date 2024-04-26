import 'package:flutter/material.dart';

class MainNavigationScreen extends StatefulWidget {
  static const String routeName = "main-navigation";

  final String tab;

  const MainNavigationScreen({super.key, required this.tab});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  final List<String> _tabs = ["home", "discover", "calendar"];

  late final int _selectedIndex = _tabs.indexOf(widget.tab);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: Container(color: Colors.red),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: Container(color: Colors.amber),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: Container(color: Colors.green),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: Container(color: Colors.blue),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: Container(color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
