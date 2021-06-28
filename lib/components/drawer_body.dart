import 'package:flutter/material.dart';
import 'package:phoneshop/constants/constants.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: red,
      body: Padding(
        padding: EdgeInsets.only(
          left: appPadding, top: appPadding * 2, bottom: appPadding * 3
        ),
        child: Container(
          width: size.width * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: (){Navigator.pop(context);},
                  child: Icon(Icons.clear_rounded, color: Colors.white, )),
              Text('Hello, \nHenry', style: TextStyle(
                color: white,
                fontSize: 20,
              ),
              ),
              Container(
                height: size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.home_rounded, color: yellow,),
                        SizedBox(height: 8,),
                        Text('Home', style: TextStyle(color: white),),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.person_rounded, color: yellow,),
                        SizedBox(height: 8,),
                        Text('Profile', style: TextStyle(color: white),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_atm_rounded, color: yellow,),
                        SizedBox(height: 8,),
                        Text('Balance', style: TextStyle(color: white),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.shopping_basket_rounded, color: yellow,),
                        SizedBox(height: 8,),
                        Text('Cart', style: TextStyle(color: white),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite_rounded, color: yellow,),
                        SizedBox(height: 8,),
                        Text('Favourites', style: TextStyle(color: white),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.help, color: yellow,),
                        SizedBox(height: 8,),
                        Text('Help', style: TextStyle(color: white),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.settings_rounded, color: yellow,),
                        SizedBox(height: 8,),
                        Text('Setting', style: TextStyle(color: white),),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white,),
              Row(
                children: [
                  Icon(Icons.logout, color: yellow,),
                  SizedBox(height: 8,),
                  Text('Logout', style: TextStyle(color: white),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
