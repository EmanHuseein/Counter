import 'package:flutter/material.dart';
import 'package:frist_project/widgets/my_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Counter", style: TextStyle(fontSize: 20))),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "الحمدللَّه",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyIconButton(
                    icon: Icons.add,
                    onPressed: () {
                      count++;
                      setState(() {});
                    },
                  ),
                  Text(
                    "$count",
                    style: const TextStyle(
                      color: Colors.brown,
                      fontSize: 40,
                    ),
                  ),
                  MyIconButton(
                    icon: Icons.remove,
                    onPressed: () {
                      if (count == 0) {
                      } else {
                        count--;
                      }
                      setState(() {});
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
