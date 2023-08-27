import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_colors.dart';

class TitleDetail extends StatefulWidget {
  const TitleDetail(
      {required this.title,
        Key? key})
      : super(key: key);
  final String title;

  @override
  State<TitleDetail> createState() => _TitleDetailState();
}

class _TitleDetailState extends State<TitleDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Row(
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: cGrayColor
            ),
          ),
          Spacer(),
          Text(
            "See All",
            style: TextStyle(
                fontSize: 17,
              color: cGrayColor
            ),
          ),
        ],
      )
    );
  }
}