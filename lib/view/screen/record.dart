import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mytask/core/constant/appcolors.dart';
import 'package:flutter_mytask/view/widget/customtext.dart';
import 'package:get/get.dart';
import '../../core/class/init_sql.dart';
import '../widget/measurement_details.dart';

class RecordScreen extends StatefulWidget {
  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  MySql mydb = MySql();
  List<Map> ?mm;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: CustomText(mytitle: "Record Screen",myfontsize: 15,mycolor: Appcolors.AccuentColor,),
        backgroundColor: Appcolors.PrimaryColor,
      ),
      body:FutureBuilder(

        future: featchdate(),
        builder: (context,AsyncSnapshot snp)=>
        snp.connectionState==ConnectionState.waiting?Center(child:
         CircularProgressIndicator(
          color: Appcolors.PrimaryColor,
        ),):
            mm!.isEmpty?Center (child: Text("There is no value"),):ListView.builder(
              itemCount: snp.data.length,
              itemBuilder: (context, index) =>
                  MeasurementDetails(
                name:
                snp.data![index]['name'],
                date:
                snp.data![index]['date'],
                age:
                snp.data![index]['age'],
                gender:
                snp.data![index]['gender'].toString(),
                num_BMI:
                snp.data![index]['mbi'].toString(),
                category_BMI:
                snp.data![index]['mbi_cat'].toString(),
                color_BMI:int.parse(snp.data![index]['mbi_color'],)

            )
              ,)
      )



      // MeasurementDetails(name: ,),
    );
  }
  featchdate() async {
   mm = await mydb.readdatabase('''
          SELECT * FROM BMI
           ''');
    print(mm);
  return mm;
  }
}
