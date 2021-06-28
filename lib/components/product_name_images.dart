import 'package:flutter/material.dart';
import 'package:phoneshop/constants/constants.dart';
import 'package:phoneshop/data/data.dart';
import 'package:phoneshop/models/best_selling_product_model.dart';

class ProductNameAndImages extends StatefulWidget {

  final BestSellingProductModel bestSellingProductModel;
  const ProductNameAndImages({Key key, this.bestSellingProductModel}) : super(key: key);



  @override
  _ProductNameAndImagesState createState() => _ProductNameAndImagesState();
}

class _ProductNameAndImagesState extends State<ProductNameAndImages> {

  Widget _buildimages(BuildContext context, int index, List<String> listImageUrl){
    Size size = MediaQuery.of(context).size;
    
    return Padding(padding: EdgeInsets.only(top: appPadding /2, bottom: appPadding/2, left: appPadding/1.5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        width: size.width * 0.45,
        fit: BoxFit.cover,
        image: AssetImage(listImageUrl[index]),
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.bestSellingProductModel.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Icon(Icons.favorite_rounded, color: red,)
            ],
          ),),
        Container(
          height: size.height * 0.4,
          child: ListView.builder
            (itemCount: widget.bestSellingProductModel.listImagesUrl.length,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index ){
              return _buildimages(context, index, widget.bestSellingProductModel.listImagesUrl);
              }),

        ),
        ],
      ),
    );
  }
}
