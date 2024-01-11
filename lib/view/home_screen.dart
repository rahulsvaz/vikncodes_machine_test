import 'package:flutter/material.dart';
import 'package:vikncodes_machine_test/view/constant/pallete.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sales Estimate',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Palette.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.add,
                  color: Palette.blue700,
                ),
              ))
        ],
      ),
    );
  }
}
