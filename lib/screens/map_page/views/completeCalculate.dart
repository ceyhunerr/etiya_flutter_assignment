import 'package:etiya_flutter_assignment/core/extension/utilities.dart';
import 'package:etiya_flutter_assignment/product/constants/app_colors.dart';
import 'package:etiya_flutter_assignment/product/constants/styles.dart';
import 'package:etiya_flutter_assignment/product/widgets/appBars.dart';
import 'package:etiya_flutter_assignment/product/widgets/buttons.dart';
import 'package:etiya_flutter_assignment/src/generated/city.pb.dart';
import 'package:flutter/material.dart';

class CompleteCalculate extends StatelessWidget {
  double totalLand;
  City city;
  CompleteCalculate({super.key,required this.totalLand, required this.city});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBars.appBar("", size, Colors.white),
      backgroundColor: grey,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: size.width*0.05,vertical: size.height*0.05),
        children: <Widget>[
          Icon(Icons.done,color: Colors.green,size: size.height*0.055,),
          Text(
            'Complete Calculate',
            style: Styles().titleStyle(size,Colors.black),textAlign: TextAlign.center,
          ),
          SizedBox(height: size.height*0.1,),
           subtitleWidget("City Where the Land Is Located",city.name,size),
          SizedBox(height: size.height*0.03,),
          subtitleWidget("Selected Land Size (m2)","${totalLand.toStringAsFixed(2)} m2",size),
          SizedBox(height: size.height*0.03,),
          subtitleWidget("Calculated Estimated Land Price ",Utilities().currencyFormat((totalLand*city.landPrice), "tr_TR"),size),
            SizedBox(height: size.height*0.1,),
          Buttons().customButton("Return to Home Page", context,size, () {

            Navigator.popUntil(context, (route) => route.isFirst);
          })
        ],
      )
    );
  }

  Column subtitleWidget(String title,String subtitle,Size size) {
    return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             title,
             style: Styles().standartStyle(size,Colors.black),textAlign: TextAlign.start,
           ),
           Text(
             subtitle,
             style: Styles().titleStyle(size,Colors.black),textAlign: TextAlign.start,
           ),
         ],
       );
  }
}
