// ignore_for_file: must_be_immutable

import 'package:bank_app/peresntation/components/Directionality_component.dart';
import 'package:bank_app/peresntation/components/app_bar/custom_app_bar.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../../model.dart';
import '../../components/text_component.dart';

class ConfirmationTransferDataScreen extends StatelessWidget {
  ConfirmationTransferDataScreen({Key? key}) : super(key: key);

  List data = [
    DetailsDataModel(address: "اسم المستلم", data: "xxxxxxxxxxx"),
    DetailsDataModel(address: "البلد", data: "السودان"),
    DetailsDataModel(address: "المدينه", data: "الخرطوم"),
    DetailsDataModel(address: "العملة", data: "ريال سعودي"),
    DetailsDataModel(address: "المبلغ المرسل", data: "6000"),
    DetailsDataModel(address: "المبلغ المستلم", data: "1200000000"),
    DetailsDataModel(address: "رسوم الايداع البنكي", data: "50"),
    DetailsDataModel(address: "رسم الخدمة", data: "5"),
    DetailsDataModel(address: "رسوم بطاقة الائتمان", data: "10"),
    DetailsDataModel(address: "سعر الصرف", data: "121.1"),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(
            needIconBell: true,
            customSize: media.height * .12,
            onPressedButtonMenu: () {
              /// TODO :
            },
            onPressedButtonBack: () {
              /// TODO :
            },
            title: "تأكيد بيانات التحويل"),
        drawerDragStartBehavior: DragStartBehavior.down,
        endDrawer: DrawerComponent(),
        body: DirectionalityComponent(
          child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true, children: [
            Padding(
              padding: EdgeInsets.all(media.width * .04),
              child: Column(
                children: [
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: media.width,
                        height: media.height * .05,
                        margin: EdgeInsets.only(bottom: media.height * .02),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black87))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: TextComponent(
                                text: data[index].address,
                                colorText: Colors.black54,
                                fontSize: 17.0.sp,
                              ),
                            ),

                            Expanded(
                              child: TextComponent(
                                text: data[index].data,
                                colorText: Colors.black87,
                                fontSize: 17.0.sp,
                                isBold: true,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Container(
                   margin: EdgeInsets.only(top: media.height*.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextComponent(
                            text: "المجموع",
                            colorText: Colors.black54,
                            fontSize: 17.0.sp,
                          ),
                        ),
                        Expanded(
                          child: TextComponent(
                            text: "6.065",
                            colorText: Colors.black87,
                            fontSize: 17.0.sp,
                            isBold: true,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SpaceComponent(
                    height: media.height * .03,
                  ),

                  GeneralButton(
                    width: media.width * 2,
                    onPressed: () {},
                    color: Colors.indigo,
                    height: media.height * .05,
                    child: TextComponent(
                      text: "تأكيد",
                      colorText: Colors.white,
                      fontSize: 18.0.sp,
                      isBold: true,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
