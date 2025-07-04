import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiiii/taps/quran/details/sura_content_item.dart';
import 'package:islamiiii/taps/quran/quran_resources.dart';
import 'package:islamiiii/utils/app_assets.dart';
import 'package:islamiiii/utils/app_colors.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName ='sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int ;
    if(verses.isEmpty){
      loadSuraFile(index);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(QuranResources.englishQuranList[index],
        style: TextStyle(
          color: AppColors.primaryColor
        ),),
      ),
      body:Container(
        color: AppColors.blackBgColor,
        child: Stack(
          alignment: Alignment.topCenter,

            children: [
              Image.asset(AppAssets.detailsBg,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,),
              Text(QuranResources.arabicQuranList[index],
              style: TextStyle(color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 24),),
              // SizedBox(height: 100,),




              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 110,
                  horizontal: 16
                ),
                child: Expanded(child:
                verses.isEmpty ?
                Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                )
                    :
                ListView.separated(
                  itemBuilder: (context, index) {
                    return SuraContentItem(suraContent: verses[index],
                    index: index,);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );

                  },
                  itemCount: verses.length,
                ),),
              ),


          ]

        ),
      ) );
  }

  void loadSuraFile(int index) async{
  String fileContent = await  rootBundle.loadString('assets/files/${index+1}.txt');
  List<String> lines = fileContent.split('\n');

verses= lines ;
  Future.delayed(Duration(seconds: 1),() => setState(() {

  }) );

  }
}
