import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/activity_card.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/list_services.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/visa_card.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/components/activity_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/components/service_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/components/user_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/components/visa_component.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/rounded_icons.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/rounded_img.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/title_detail.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_space.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: <Widget>[
            UserComponent(),

            sizedBoxH10,
            TitleDetail(title: "Your Visa",),
            VisaComponent(),

            sizedBoxH10,
            TitleDetail(title: "Services"),
            ServiceComponent(),

            sizedBoxH10,
            TitleDetail(title: "Activity"),
            ActivityComponent()
          ],
        ),
      ),
    );
  }
}
