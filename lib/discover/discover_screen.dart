import 'package:english_helper/constants/gaps.dart';
import 'package:english_helper/constants/sizes.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(220),
          child: Container(
            color: Colors.black,
            width: width,
          ),
        ),
        title: const Text(
          'Discover',
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFb37dd3),
                Colors.black,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Sizes.size24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'Translation',
                      style: TextStyle(
                        color: Color(0xFFb37dd3),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Gaps.v12,
                Text(
                  textAlign: TextAlign.center,
                  'Яке твоє улюблене місце для відпочинку? Чому саме воно?',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: const Color(0xFFcd88f7),
                      ),
                ),
              ],
            ),
          ),
          // Text(
          //   'Яке твоє улюблене місце для відпочинку? Чому саме воно?',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
          // const SizedBox(height: 10),
        ),
      ),
    );
  }
}
