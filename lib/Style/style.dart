
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


const colorRed=Color.fromRGBO(231, 28, 26, 1);
const colorGreen=Color.fromRGBO(33, 191, 115, 1);
const colorWhite=Color.fromRGBO(255, 2555, 255, 1);
const colorDarkBlue=Color.fromRGBO(44, 62, 80, 1);


//All Input Style

InputDecoration AppInputDecoration(label){
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: colorGreen,width: 1)
    ),
    fillColor: colorWhite,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: colorWhite,width: 0)
    ),
    border: OutlineInputBorder(),
    labelText: label
  );
}

// Background Set

ScreenBackground(context){
 return SvgPicture.asset(
    'assets/images/screen-back.svg',
    alignment: Alignment.center,
     width: MediaQuery.of(context).size.width,
     height:MediaQuery.of(context).size.height,
     fit: BoxFit.cover,
  );
}

// DropDown Style
DecoratedBox AppDropDownStyle(child){
  return DecoratedBox(
      decoration: BoxDecoration(
        color: colorWhite,border: Border.all(color: colorWhite,width: 1),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 30,right: 30),
        child: child,
      ),
  );
}


// Button Style

ButtonStyle AppButtonStyle(){

    return ElevatedButton.styleFrom(
      elevation: 1,
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))

    );

}

//Button Text Style


Ink SuccessButtonChild(ButtonText){
  return Ink(
    decoration: BoxDecoration(
      color: colorGreen,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(ButtonText,style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15
      ),),
    ),
  );
}