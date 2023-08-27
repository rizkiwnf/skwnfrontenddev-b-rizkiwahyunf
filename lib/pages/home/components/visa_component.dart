import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/visa_card.dart';
import 'package:get/get.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/detail/detail_finance.dart';

class VisaComponent extends StatefulWidget {
  const VisaComponent({
    Key? key})
      : super(key: key);

  @override
  State<VisaComponent> createState() => _VisaComponentState();
}

class _VisaComponentState extends State<VisaComponent> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          VisaCard(
            link: () => Get.to(DetailFinance()),
            theme_white: false,
            name: "Aurelia",
            number: "4000 5127 2123 2018",
          ),
          VisaCard(
            link: () => Get.to(DetailFinance()),
            theme_white: true,
            name: "Aurelia",
            number: "4000 5127 2123 2018",
          ),
        ],
      ),
    );
  }
}