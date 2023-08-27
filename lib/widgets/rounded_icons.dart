import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_colors.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_space.dart';

class RoundedIcons extends StatefulWidget {
  const RoundedIcons(
      {required this.icon,
      this.color = false,
      Key? key})
      : super(key: key);
  final IconData icon;
  final bool? color;

  @override
  State<RoundedIcons> createState() => _RoundedIconsState();
}

class _RoundedIconsState extends State<RoundedIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(5),
              width: 50,
              height: 50,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: widget.color == true? cLightRedColor : cLightBlueColor,
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: const Offset(0, 4),
                        color: cLightGrayColor,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 2)
                  ]),
              child: Icon(
                widget.icon,
                color: widget.color == true? cRedColor : cPrimaryColor,
              ),
    );
  }
}
