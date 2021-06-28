import 'package:flutter/material.dart';
import 'package:phoneshop/components/drawer_body.dart';
import 'package:phoneshop/screens/home_screen.dart';

class NavigationScreenDrawer extends StatefulWidget {
  const NavigationScreenDrawer({Key key}) : super(key: key);

  @override
  _NavigationScreenDrawerState createState() => _NavigationScreenDrawerState();
}

class _NavigationScreenDrawerState extends State<NavigationScreenDrawer> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Duration duration = Duration(milliseconds: 500);
  Animation<double> scaleAnimation;

  bool drawerOpen = false;

  @override
  void initState() {

    super.initState();
    _animationController = AnimationController(vsync: this, duration: duration);
    scaleAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(_animationController);
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          DrawerBody(),
          AnimatedPositioned(
            duration: duration,
              top: 0,
              bottom: 0,
              left: size.width * 0.55,
              right: size.width * - 0.45 ,
              child: ScaleTransition(
scale: scaleAnimation,
                  child: HomeScreen()))
        ],
      ),
    );
  }
}
