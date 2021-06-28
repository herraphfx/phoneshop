import 'package:flutter/material.dart';
import 'package:phoneshop/components/best_selling_product.dart';
import 'package:phoneshop/components/popular_product.dart';
import 'package:phoneshop/constants/constants.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding, left: appPadding),
        child: SingleChildScrollView(
          child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(right: appPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),),
                      Text('01/21', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),)
                    ],
                  ),
                  ),
                  PopularProducts(),
                  Padding(padding: EdgeInsets.only(right: appPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Best Selling', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                        Text('02/21', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),)
                      ],
                    ),
                  ),
                  BestSellingProducts()
                ],
          ),
        ),
      ),
    );
  }
}
