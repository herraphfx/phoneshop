import 'package:flutter/material.dart';

import 'package:phoneshop/components/custom_app_details.dart';
import 'package:phoneshop/components/product_features.dart';
import 'package:phoneshop/components/product_name_images.dart';

import 'package:phoneshop/models/best_selling_product_model.dart';

class DetailScreen extends StatefulWidget {


  final BestSellingProductModel bestSellingProductModel;
  const DetailScreen({Key key, this.bestSellingProductModel}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CustomAppDetails(),
              ProductNameAndImages(bestSellingProductModel: widget.bestSellingProductModel,),
              ProductFeatures(bestSellingProductModel: widget.bestSellingProductModel)
            ],
          ),
        ),
      ),
    );
  }
}
