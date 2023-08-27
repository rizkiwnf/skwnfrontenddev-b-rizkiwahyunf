import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/activity_card.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/list_services.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/visa_card.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_colors.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/detail/components/graph_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/components/activity_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/components/service_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/components/user_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/components/visa_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/rounded_icons.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/rounded_img.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/title_detail.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_space.dart';

class DetailFinance extends StatelessWidget {
  const DetailFinance({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: size.height / 5,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: cSecondaryColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          offset: const Offset(0, 4),
                          color: cLightGrayColor,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 2)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () => Get.back(),
                            icon: Icon(
                              Icons.arrow_back,
                              size: 22,
                              color: cWhiteColor,
                            ),
                          ),
                          sizedBoxW8,
                          Text(
                            "Account Finance",
                            style: TextStyle(color: cWhiteColor, fontSize: 22),
                          ),
                          Spacer(),
                          Icon(
                            Icons.help,
                            color: cWhiteColor,
                            weight: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rp25.550.000,-",
                              style: TextStyle(
                                  color: cWhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            sizedBoxH4,
                            Text(
                              "12 June 2022",
                              style:
                                  TextStyle(color: cWhiteColor, fontSize: 18),
                            ),
                          ]),
                    )
                  ],
                )),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  sizedBoxH10,
                  TitleDetail(title: "Statics"),
                  sizedBoxH10,
                  GraphComponent(),
                  sizedBoxH10,
                  TitleDetail(title: "Activity"),
                  ActivityComponent()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
