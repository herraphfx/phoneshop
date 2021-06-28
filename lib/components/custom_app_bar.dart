import 'package:flutter/material.dart';
import 'package:phoneshop/constants/constants.dart';
import 'package:phoneshop/screens/screen_navigation_screen.dart';

class CustomAppBar extends StatefulWidget {

  final Function drawerCallback;
  const CustomAppBar({Key key, this.drawerCallback}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(child: Container(
      height: size.height * 0.1,
      padding: EdgeInsets.all(appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_) => NavigationScreenDrawer()));},
      child: Icon(Icons.short_text_rounded, color: Colors.white, size: 25,),
          ),
          RichText(text: TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            children: <TextSpan>[
                TextSpan(
                  text: "Phone Shop",
                  style: TextStyle(color: yellow)
                )

            ]
          )),
          Icon(Icons.search, color: Colors.white, size: 25,),

        ],
      ),
    ));
  }
}
