import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_colors.dart';

class RoundedImg extends StatefulWidget {
  const RoundedImg(
      {required this.image,
        Key? key})
      : super(key: key);
  final String image;

  @override
  State<RoundedImg> createState() => _RoundedImgState();
}

class _RoundedImgState extends State<RoundedImg> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        width: size.width * 0.15,
        height: size.width * 0.15,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            ),
            color: cPrimaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 1)
            ]));
  }
}