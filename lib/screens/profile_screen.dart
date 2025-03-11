import 'package:dars29/utils/app_extensions.dart';
import 'package:dars29/utils/size_utils.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = SizeUtils.screenWidth(context);
    final screenHeight = context.screenHeight;

    
    final double boxSize =
        screenWidth > 500 ? screenWidth / 6 - 30 : screenWidth / 3 - 10;

    // orientation = Qurilmani tik yoki yotgan holati
    final orientation = MediaQuery.of(context).orientation;

    // Portrait = Tik holatda
    // Landscape = Yotgan holatda
    print(orientation);

    // qurilmani yorug'lik holati (light yoki dark)
    final brightness = MediaQuery.of(context).platformBrightness;

    print(brightness);

    return Scaffold(
      backgroundColor:
          brightness == Brightness.dark ? Colors.black87 : Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              if (screenWidth > 500)
                Row(
                  children: [
                    CircleAvatar(
                      radius: screenWidth > 500 ? 70 : 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ism Familiya"),
                        Text("+998 90 123 45 67"),
                      ],
                    )
                  ],
                )
              else
                Column(
                  children: [
                    CircleAvatar(
                      radius: screenWidth > 500 ? 70 : 50,
                    ),
                    Text("Ism\nFamiliya"),
                  ],
                ),
              for (var i = 0; i < (screenWidth > 500 ? 2 : 4); i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    for (var j = 0; j < (screenWidth > 500 ? 6 : 3); j++)
                      Container(
                        width: boxSize,
                        height: boxSize,
                        color: Colors.blue,
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
