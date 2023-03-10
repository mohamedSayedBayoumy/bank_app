import 'package:bank_app/peresntation/components/drop_list_component.dart';
import 'package:bank_app/peresntation/components/general_button_component.dart';
import 'package:bank_app/peresntation/components/textfiled_component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';

class AddBalanceScreen extends StatelessWidget {
    AddBalanceScreen({Key? key}) : super(key: key);



  static List<String> id = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];

    dynamic selectChoiceId = id[0];


    @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(
            needIconBell: true,
            customSize: media.height * .12,
            title: 'تغذية المحفظة',
            onPressedButtonBack: () {
              /// TODO : SOME THING
            },
            onPressedButtonMenu: () {
              /// TODO : SOME THING
            }),
        drawerDragStartBehavior: DragStartBehavior.down,
        endDrawer:    DrawerComponent(),
        body: GeneralPadding(
            child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextComponent(
                    text: "الرصيد الحالي في المحفظة",
                    colorText: Colors.black,
                    fontSize: 20.0.sp,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextComponent(
                    text: "210.540",
                    isBold: true,
                    colorText: Colors.green,
                    fontSize: 50.0.sp,
                    fontFamily: "Anton",
                  ),
                  SpaceComponent(
                    width: media.width * .02,
                  ),
                  TextComponent(
                    text: "SDG",
                    colorText: Colors.black,
                    fontSize: 18.0.sp,
                  ),
                ],
              ),
              SpaceComponent(height: media.height * .08),
              const Text("المبلغ" , textAlign: TextAlign.right) ,
              CustomTextField(controller: TextEditingController() ),
              SpaceComponent(height: media.height * .04),
                  const Text(" من البطاقة", textAlign: TextAlign.right) ,
                  DropList(list: id , value: selectChoiceId ,styleBorder: 15.0),
              SpaceComponent(height: media.height * .04),
                  const Text(" رمز المرور", textAlign: TextAlign.right) ,
                  CustomTextField(controller: TextEditingController()),
                  SpaceComponent(height: media.height * .05),
                  GeneralButton(
                      height: media.height*.06,
                      width: media.width*.002,
                      color: Colors.green,
                      onPressed: (){
                    /// TODO : Here ////////////////////
                  }, child:  TextComponent(text : "تغذية" ,colorText: Colors.white,fontSize: 18.sp,))
            ])));
  }
}
