import 'package:flutter/material.dart';
import '../Style/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
// stateful Widget

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CreateProduct'),
        ),
        body: Stack(
          children: [
            //Background Graphics
            ScreenBackground(context),
            Container(
                child: (SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) {},
                          decoration: AppInputDecoration('ProductName'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (value) {},
                          decoration: AppInputDecoration('ProductCode'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (value) {},
                          decoration: AppInputDecoration('ProductImage'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (value) {},
                          decoration: AppInputDecoration('Unit Price'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (value) {},
                          decoration: AppInputDecoration('Total Price'),
                        ),
                      ],
                    ))))
          ],
        ));
  }
}
