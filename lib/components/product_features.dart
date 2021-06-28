import 'package:flutter/material.dart';
import 'package:phoneshop/constants/constants.dart';
import 'package:phoneshop/models/best_selling_product_model.dart';
import 'package:phoneshop/widgets/star_rating.dart';

class ProductFeatures extends StatefulWidget {

  final BestSellingProductModel bestSellingProductModel;
   ProductFeatures({this.bestSellingProductModel});

  @override
  _ProductFeaturesState createState() => _ProductFeaturesState();
}

class _ProductFeaturesState extends State<ProductFeatures> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding/2),
        child: Container(
            decoration: BoxDecoration(
              color: brown,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40))
            ),
          padding: EdgeInsets.all(appPadding),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween
              ,
              children: [Text('Features', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
              ),
                Row(
                  children: [
                    StarRating(rating: widget.bestSellingProductModel.rating,),
                    SizedBox(width: 5.0,),
                    Text(widget.bestSellingProductModel.rating.toString(), style: TextStyle(
                      color: white,
                      fontSize: 17,
                    ),)
                  ],
                )
              ],
            
            ),
            Text(widget.bestSellingProductModel.maxDescription, style: TextStyle(color: white),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.battery_charging_full_rounded, color: yellow, size: 30,
                        ),
                        Text('${widget.bestSellingProductModel.battery}h', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.whatshot_rounded, color: yellow, size: 30,
                        ),
                        Text('${widget.bestSellingProductModel.input}m', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bluetooth_rounded, color: yellow, size: 30,
                        ),
                        Text('${widget.bestSellingProductModel.bluetooth}', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.volume_up_rounded, color: yellow, size: 30,
                        ),
                        Text('${widget.bestSellingProductModel.sound}', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: size.width * 0.6,
                      height: size.height * 0.12,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),),
                          Text('${widget.bestSellingProductModel.price}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),),
                          SizedBox(width: 10,),
                          Text('+ Add To Cart',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 16,
                            ),),
                        ],
                      ),
                    ),
                  ),
                  Container(

                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.shopping_basket_rounded, size: 40,),
                  )
                ],
              )
            ],
          ),
          ),

      ),
    );
  }
}
