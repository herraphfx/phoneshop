import 'package:flutter/material.dart';
import 'package:phoneshop/components/bottom_container.dart';
import 'package:phoneshop/components/custom_app_bar.dart';
import 'package:phoneshop/components/main_texts.dart';
import 'package:phoneshop/screens/background_image.dart';

class HomeScreen extends StatefulWidget {

  final Function drawerCallback;
  const HomeScreen({Key key, this.drawerCallback}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppBar(drawerCallback: widget.drawerCallback,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainTexts(),
              BottomContainer(),
            ],
              )
            ],
          )
        ],
      ),
    );
  }
}
