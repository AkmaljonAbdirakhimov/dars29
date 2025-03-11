import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://static.vecteezy.com/system/resources/thumbnails/023/290/773/small_2x/fresh-red-apple-isolated-on-transparent-background-generative-ai-png.png";
    return Scaffold(
      appBar: AppBar(
        title: Text("Salom Brojon!"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -10,
              left: -5,
              child: Image.network(
                imageUrl,
                width: 300,
                color: Colors.black.withOpacity(0.2),
                colorBlendMode: BlendMode.srcIn,
              ),
            ),
            Image.network(
              imageUrl,
              width: 300,
            ),
            SegmentedButton(
              selected: {"1"},
              segments: [
                ButtonSegment(
                  value: "1",
                  label: Text("1"),
                ),
                ButtonSegment(
                  value: "2",
                  label: Text("2"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
