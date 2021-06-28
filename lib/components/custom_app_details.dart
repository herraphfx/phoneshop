import 'package:flutter/material.dart';
import 'package:phoneshop/constants/constants.dart';

class CustomAppDetails extends StatelessWidget {
  const CustomAppDetails({Key key}) : super(key: key);

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
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_rounded, color: Colors.black, size: 25,)),
          RichText(text: TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: "Erupts",
                    style: TextStyle(color: yellow)
                )

              ]
          )),
          Icon(Icons.search, color: Colors.black, size: 25,),

        ],
      ),
    ));
  }
}
