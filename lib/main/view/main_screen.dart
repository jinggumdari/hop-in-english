import 'package:english_helper/constants/breakpoints.dart';
import 'package:english_helper/constants/gaps.dart';
import 'package:english_helper/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

final tabs = ["Wordlist", "Writing", "Listening"];
final contents = [
  [
    "Мрія",
    "Dream",
    "/mrija/",
  ],
  [
    "Кумедний",
    "Funny",
    "/ku‘mednij/",
  ],
  [
    "Малятко",
    "Baby",
    "/maljeetko/|",
  ],
];

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void _onGearPressed() {}

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Container(
              color: Colors.black,
              height: 2,
              width: width,
            ),
          ),
          title: const Text('Course'),
          actions: [
            IconButton(
              onPressed: _onGearPressed,
              icon: const Icon(FontAwesomeIcons.gear),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x00b37dd3),
                  Colors.black,
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size16,
                vertical: Sizes.size8,
              ),
              tabAlignment: TabAlignment.start,
              splashFactory: NoSplash.splashFactory,
              isScrollable: true,
              labelStyle: const TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
              ),
              // indicatorColor: Theme.of(context).colorScheme.primary,
              indicator: BoxDecoration(
                // color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              labelColor: Theme.of(context).colorScheme.onBackground,
              unselectedLabelColor: Colors.grey.shade500,
              tabs: [
                for (var tab in tabs)
                  SizedBox(
                    width: 100,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(0, 205, 165, 230),
                      ),
                      child: Tab(text: tab),
                    ),
                  ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  for (var content in contents)
                    ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        height: Sizes.size16,
                      ),
                      padding: const EdgeInsets.all(Sizes.size24),
                      itemBuilder: (context, index) {
                        final content = contents[index];
                        return GestureDetector(
                          onTap: () {
                            context.pushReplacement('/discover');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(Sizes.size32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.grey.shade900,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  content[0],
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Gaps.v16,
                                Text(
                                  content[1],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors.grey.shade500,
                                      ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const FaIcon(
                                        FontAwesomeIcons.volumeHigh,
                                        color: Color(0xFFcd88f7),
                                        size: 16,
                                      ),
                                    ),
                                    Text(
                                      content[2],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            color: const Color(0xFFcd88f7),
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 3,
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
