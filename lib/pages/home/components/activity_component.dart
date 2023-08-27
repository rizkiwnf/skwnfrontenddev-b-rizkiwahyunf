import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/activity_card.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_colors.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_space.dart';

class ActivityComponent extends StatefulWidget {
  const ActivityComponent({
        Key? key})
      : super(key: key);

  @override
  State<ActivityComponent> createState() => _ActivityComponentState();
}

class _ActivityComponentState extends State<ActivityComponent> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ActivityCard(
          bank: "Bank Mandiri",
          number: "Rp15.510.000,-",
          status: false,
          date: "11 March 2021",
          time: "12.11 AM",
        ),
        ActivityCard(
          bank: "Bank Mandiri",
          number: "Rp15.510.000,-",
          status: true,
          date: "11 March 2021",
          time: "12.11 AM",
        ),
        ActivityCard(
          bank: "Bank Mandiri",
          number: "Rp15.510.000,-",
          status: true,
          date: "11 March 2021",
          time: "12.11 AM",
        )
      ],
    );
  }
}