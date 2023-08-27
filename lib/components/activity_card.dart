import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_colors.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/constant/constant_space.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/rounded_icons.dart';

class ActivityCard extends StatefulWidget {
  const ActivityCard(
      {required this.bank,
      required this.date,
      required this.time,
      required this.number,
      required this.status,
      Key? key})
      : super(key: key);
  final String bank;
  final String date;
  final String time;
  final String number;
  final bool status;

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: EdgeInsets.all(7),
        width: double.infinity,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: cWhiteColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: const Offset(0, 4),
                  color: cLightGrayColor,
                  blurStyle: BlurStyle.normal,
                  blurRadius: 2)
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedIcons(
                icon: widget.status == false ? Icons.arrow_upward : Icons.arrow_downward,
                color:  widget.status == false ? false : true,
            ),
            SizedBox(width: 10), // Add spacing between icons and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          widget.status == false ? "Deposit" : "Withdraw",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          widget.date,
                          style: TextStyle(
                            fontSize: 13,
                            color: cGrayColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5), // Add spacing between text rows
                  Text(
                    widget.number,
                    style: TextStyle(
                      fontSize: 15,
                      color: widget.status == false ? cPrimaryColor : cRedColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: cGrayColor,
                        ),
                        Text(
                          "Bank Mandiri ATM",
                          style: TextStyle(color: cGrayColor, fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          widget.time,
                          style: TextStyle(
                            fontSize: 13,
                            color: cGrayColor,
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ],
        ));
  }
}
