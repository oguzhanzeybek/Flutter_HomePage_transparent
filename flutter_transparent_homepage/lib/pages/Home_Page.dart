import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_transparent_homepage/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(
                LinearGradient(
                    colors: [aiColors.primarycolor1, aiColors.primarycolor2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              )
              .make(),
          AppBar(
            title: "Homepage".text.xl4.bold.white.make().shimmer(
                  primaryColor: Vx.white,
                  secondaryColor: const Color.fromARGB(255, 66, 121, 215),
                ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          ).h(100).p16(),
        ],
        fit: StackFit.expand,
      ),
    );
  }
}
