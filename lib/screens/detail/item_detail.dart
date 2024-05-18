import 'package:e_commerce_provider/model/prodect_model.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final ProductModel product;
  const ItemDetails({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title,style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold

        ),),
        SizedBox(height: 1,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$${product.price}",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,
          color: Colors.grey

        ),),
       


          ],
        ),
      
      
       
        //          
        
      ],
    );
  }
}