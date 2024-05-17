import 'package:flutter/material.dart';
import 'dart:math';
import '../widgets/cat.dart';

class Home extends StatefulWidget {
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> with TickerProviderStateMixin {
  late Animation<double> catAnimation;
  late AnimationController catController;
  late Animation<double> boxAnimation;
  late AnimationController boxController;

  void initState() {
    super.initState();

    boxController = AnimationController(
      duration: Duration(milliseconds: 400),
      vsync: this,
    );
    boxAnimation = Tween(
      begin: pi * 0.6,
      end: pi * 0.66,
    ).animate(CurvedAnimation(
      parent: boxController,
      curve: Curves.easeInOut,
    ));

    catController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    catAnimation = Tween(
      begin: -30.0,
      end: -80.0,
    ).animate(
      CurvedAnimation(
        parent: catController,
        curve: Curves.easeIn,
      ),
    );

    boxAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        boxController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        boxController.forward();
      }
    });
    boxController.forward();
  }

  onTap() {
    if (catController.status == AnimationStatus.completed) {
      boxController.forward();
      catController.reverse();
    } else if (catController.status == AnimationStatus.dismissed) {
      boxController.stop();
      catController.forward();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: GestureDetector(
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              buildCatAnimation(),
              buildBox(),
              buildLeftFlap(),
              buildRightFlap(),
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }

  Widget buildCatAnimation() {
    return AnimatedBuilder(
      animation: catAnimation,
      builder: (context, child) {
        return Positioned(
          top: catAnimation.value,
          right: 0.0,
          left: 0.0,
          child: Cat(),
        );
      },
      child: Cat(),
    );
  }

  Widget buildBox() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.brown,
    );
  }

  Widget buildLeftFlap() {
    return Positioned(
      child: AnimatedBuilder(
        animation: boxAnimation,
        builder: (context, child) {
          return Transform.rotate(
            child: Container(
              height: 10.0,
              width: 125.0,
              color: Colors.brown,
            ),
            alignment: Alignment.topLeft,
            angle: boxAnimation.value,
          );
        },
        child: Container(
          height: 10.0,
          width: 125.0,
          color: Colors.brown,
        ),
      ),
      left: 4.0,
      top: 2.0,
    );
  }

  Widget buildRightFlap() {
    return Positioned(
      child: AnimatedBuilder(
        animation: boxAnimation,
        builder: (context, child) {
          return Transform.rotate(
            child: Container(
              height: 10.0,
              width: 125.0,
              color: Colors.brown,
            ),
            alignment: Alignment.topRight,
            angle: -boxAnimation.value,
          );
        },
        child: Container(
          height: 10.0,
          width: 125.0,
          color: Colors.brown,
        ),
      ),
      right: 4.0,
      top: 2.0,
    );
  }
}
