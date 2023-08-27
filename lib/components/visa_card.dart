import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_colors.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_space.dart';

class VisaCard extends StatefulWidget {
  const VisaCard(
      {required this.name,
      required this.number,
      required this.theme_white,
      required this.link,
      Key? key})
      : super(key: key);
  final String name;
  final String number;
  final bool theme_white;
  final Function() link;

  @override
  State<VisaCard> createState() => _VisaCardState();
}

class _VisaCardState extends State<VisaCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: widget.link,
      child: Container(
        padding: EdgeInsets.all(15),
        width: size.width / 1.5,
        // height: size.height / 6,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: widget.theme_white == true ? cWhiteColor : cSecondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: <BoxShadow>[
              widget.theme_white == true
                  ? BoxShadow(
                      offset: const Offset(0, 4),
                      color: cLightGrayColor,
                      blurStyle: BlurStyle.normal,
                      blurRadius: 2)
                  : BoxShadow()
            ]),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  color:
                      widget.theme_white == true ? cPrimaryColor : cWhiteColor,
                  Icons.credit_card,
                  size: 30,
                ),
                Spacer(),
                Text(
                  "Premium",
                  style: TextStyle(
                      color: widget.theme_white == true
                          ? cPrimaryColor
                          : cWhiteColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            sizedBoxH12,
            Text(
              widget.number,
              style: TextStyle(
                  fontFamily: AutofillHints.creditCardNumber,
                  color:
                      widget.theme_white == true ? cPrimaryColor : cWhiteColor,
                  fontSize: 15),
            ),
            sizedBoxH6,
            Row(
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      fontSize: 18,
                      color: widget.theme_white == true
                          ? cPrimaryColor
                          : cWhiteColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.creditCardName),
                ),
                Spacer(),
                Icon(
                  color:
                      widget.theme_white == true ? cPrimaryColor : cWhiteColor,
                  Icons.supervisor_account,
                  size: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
