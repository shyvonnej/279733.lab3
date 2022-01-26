import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lab3/model/config.dart';
import 'package:lab3/model/product.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
  late double screenHeight, screenWidth, resWidth;

  screenHeight = MediaQuery.of(context).size.height;
  screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth <= 600) {
    resWidth = screenWidth;
  } else {
    resWidth = screenWidth * 0.70;
  }

  return Scaffold(
    appBar: AppBar(
      title: const Text("PRODUCT DETAILS"),
    ),
    body: Center(
    child: SizedBox(
      width: resWidth * 2,
      height: screenHeight,
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.product.prname!,
              textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: resWidth * 0.05,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CachedNetworkImage(
              height: 300, width: 300, fit: BoxFit.scaleDown,
              imageUrl: Config.server + "/lab3/images/" + widget.product.prid! + ".jpg",
              placeholder: (context, url) => const LinearProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error_outline_sharp)),
            SizedBox(height: screenHeight * 0.03),
            Row(children: [
              const Icon(Icons.money_rounded),
              SizedBox(width: resWidth * 0.05),
              Flexible(
              child: Text("Price: RM" +
                widget.product.prprice!,
                style: TextStyle(
                fontSize: resWidth * 0.035,
                          ),
                        ),
                      ),
                    ],
                  ),
            SizedBox(height: screenHeight * 0.03),
            Row(children: [
              const Icon(Icons.production_quantity_limits),
              SizedBox(width: resWidth * 0.05),
              Flexible(
              child: Text("Available Quantity: " +
                widget.product.prqty!,
                style: TextStyle(
                fontSize: resWidth * 0.035,
                          ),
                        ),
                      ),
                    ],
                  ),
            SizedBox(height: screenHeight * 0.03),
            Row(children: [
              const Icon(Icons.description_sharp),
              SizedBox(width: resWidth * 0.05),
              Flexible(
              child: Text("Description: " + "\n" +
                widget.product.prdesc!,
                style: TextStyle(
                fontSize: resWidth * 0.035,
                          ),
                        ),
                      ),
                    ],
                  ),
          ]
          )
        )
      )
    ))
    );
  }
}