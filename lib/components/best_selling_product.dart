import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:phoneshop/constants/constants.dart';
import 'package:phoneshop/data/data.dart';
import 'package:phoneshop/models/best_selling_product_model.dart';
import 'package:phoneshop/screens/details.dart';
import 'package:phoneshop/widgets/star_rating.dart';


class BestSellingProducts extends StatelessWidget {
  const BestSellingProducts({Key key}) : super(key: key);

  Widget _buildBestSellingProducts(BuildContext context, int index){
    Size size = MediaQuery.of(context).size;
    BestSellingProductModel bestSellingProductModel = bestSellingProductsList[index];
    
    return Padding(padding: EdgeInsets.symmetric(
      vertical: appPadding /2,
      horizontal: appPadding /3,
    ),
    child: SingleChildScrollView(
      child: Container(
        width: size.width * 0.8,
        padding: EdgeInsets.all(appPadding/3),
        decoration: BoxDecoration(
          color: brown,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                  width: size.width * 0.24,
                  fit: BoxFit.cover,
                  image: AssetImage(bestSellingProductModel.imageUrl)),
            ),
          SizedBox(width: 5),
            Container(
              width: size.width * 0.24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bestSellingProductModel.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),),
                  Text(
                    bestSellingProductModel.description,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),),
                  Row(
                    children: [
                      Text(
                        '\$${bestSellingProductModel.price}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StarRating(rating: bestSellingProductModel.rating,),
                  InkWell(
                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen(
                    bestSellingProductModel: bestSellingProductModel,
                    ),),);} ,
                    child: Container(
                      width: size.width * 0.12,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );


  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width * 3,
      child: ListView.builder(
          itemCount: bestSellingProductsList.length,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return _buildBestSellingProducts(context, index);
          }),
    );
  }
}
