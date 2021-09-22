import 'package:example/widgets/remote/tabbar.dart';
import 'package:figma_remote/figma_remote.dart';
import 'package:flutter/material.dart';

import 'widgets/remote/spot_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RemoteFigma(
      token: '239258-424aeb15-66f3-4a5c-9121-08fdc6537a33',
      fileId: 'FMUAbSfit7nA1Qf4OFIccK',
      child: MaterialApp(
        title: 'Figma Remote',
        home: Scaffold(
          body: Builder(builder: (context) {
            final mediaQuery = MediaQuery.of(context);
            return Stack(
              children: [
                ListView(
                  padding: const EdgeInsets.all(20) + mediaQuery.padding,
                  children: const [
                    SpotTile(
                      name: 'Saint-Lunaire',
                      positive: 0.75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SpotTile(
                      name: 'Fort-Bloqué',
                      positive: 0.85,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SpotTile(
                      name: 'Saint-Malo',
                      positive: 0.25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SpotTile(
                      name: 'La Torche',
                      positive: 0.5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SpotTile(
                      name: 'Hendaye',
                      positive: 0.95,
                    ),
                  ],
                ),
                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Tabbar(
                    tabCount: 3,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}