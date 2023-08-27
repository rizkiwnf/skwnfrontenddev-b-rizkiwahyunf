import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_colors.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_space.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/rounded_icons.dart';

class ListServices extends StatefulWidget {
  const ListServices(
      {required this.icon,
        required this.title,
        Key? key})
      : super(key: key);
  final IconData icon;
  final String title;

  @override
  State<ListServices> createState() => _ListServicesState();
}

class _ListServicesState extends State<ListServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedIcons(
            icon: widget.icon,
          ),
          sizedBoxH4,
          Text(
            widget.title,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
