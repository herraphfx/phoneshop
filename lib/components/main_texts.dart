import 'package:flutter/material.dart';
import 'package:phoneshop/constants/constants.dart';

class MainTexts extends StatelessWidget {
  const MainTexts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('COLLECTION 2021', style: TextStyle(
            color: yellow,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(height: 15,),
          Text('Phone Shop', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            fontSize: 18
          ),),
          SizedBox(height: 15,),
          Text('Phone Shop with all the features', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),),
        ],
      ),
    );
  }
}
