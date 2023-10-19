import 'package:flutter/material.dart';
 
import '../Style/style.dart';

// stateful Widget

class ProductCreateScreen extends StatefulWidget{
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState()=> _ProductCreateScreenState();

}

class _ProductCreateScreenState extends State<ProductCreateScreen>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title:const Text('CreateProduct'),),
      body:Stack(
        children: [
            Container(
              child:(SingleChildScrollView(
                padding:const EdgeInsets.all(20),
                child:Column(
                  children: [
                    TextFormField(
                      onChanged: (value){},
                      decoration: AppInputDecoration('ProductName'),
                    
                      
                      ),


                    TextFormField(
                      onChanged: (value){},
                       decoration: AppInputDecoration('ProductName'),
                    ),
                    TextFormField(onChanged: (value){},),
                    TextFormField(onChanged: (value){},),
                    TextFormField(onChanged: (value){},),
                  ],
                )
              ))
            )
        ],
      )
    );
  }
}