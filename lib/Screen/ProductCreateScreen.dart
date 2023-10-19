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

    Map<String,String>FormValues={

   
    "Img":"",
    "ProductCode":"",
    "ProductName":"",
    "Qty":"",
    "TotalPrice":"",
    "UnitPrice":""

    };

    // API method Calling
    InputOnChange(Mapkey,Textvalue){
      setState((){
        FormValues.update(Mapkey, (value) => Textvalue);
      });
    }

    // Form Submit for validation

    FormOnSubmit(){
      if(FormValues['Img']!.length == 0){
        
      }

      else if(FormValues['ProductName']!.length == 0){

      }
      else if(FormValues['ProductCode']!.length == 0){

      }
      else if(FormValues['Img']!.length==0){

      }

      else if(FormValues['UnitPrice']!.length==0){

      }

      else if(FormValues['TotalPrice']!.length==0){

      }
       
    }

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
                          onChanged: (Textvalue) {
                            InputOnChange("ProductName",Textvalue);
                          },
                          decoration: AppInputDecoration('ProductName'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (Textvalue) {
                            InputOnChange("ProductCode", Textvalue);
                          },
                          decoration: AppInputDecoration('ProductCode'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (Textvalue) {
                            InputOnChange("Img", Textvalue);
                          },
                          decoration: AppInputDecoration('ProductImage'),
                        ),
                        SizedBox(
                          height: 20,
                        ),


                        TextFormField(
                          onChanged: (Textvalue) {
                            InputOnChange("UnitPrice", Textvalue);
                          },
                          decoration: AppInputDecoration('Unit Price'),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        TextFormField(
                          onChanged: (Textvalue) {
                            InputOnChange("TotalPrice",Textvalue);
                          },
                          decoration: AppInputDecoration('Total Price'),
                        ),

                        SizedBox(height: 20,),


                     AppDropDownStyle(
                      DropdownButton(
                        value:FormValues['Qty'] ,
                        items:[
                          DropdownMenuItem(child: Text('Select Qt'),value: "",),
                          DropdownMenuItem(child: Text('1 pcs'),value: "1 pcs",),
                          DropdownMenuItem(child: Text('2 pcs'),value: '2 pcs',),
                          DropdownMenuItem(child: Text('3 pcs'),value: '3 pcs',),
                          DropdownMenuItem(child: Text('4 pcs'),value: '4 pcs',),
                        ],
                        onChanged: (Textvalue){
                          InputOnChange("Qty", Textvalue);
                        },

                        underline: Container(),
                        isExpanded: true,
                      )
                  ),
                        SizedBox(height: 20,),

                        Container(
                          child:ElevatedButton(
                            style:AppButtonStyle(),
                            onPressed: (){
                              FormOnSubmit();
                            },
                            
                            child:SuccessButtonChild('Submit'),
                            
                            )
                        )

                      ],
                    ))))
          ],
        ));
  }
}
