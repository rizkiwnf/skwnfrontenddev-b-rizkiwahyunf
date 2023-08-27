import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/components/list_services.dart';

class ServiceComponent extends StatefulWidget {
  const ServiceComponent({
    Key? key})
      : super(key: key);

  @override
  State<ServiceComponent> createState() => _ServiceComponentState();
}

class _ServiceComponentState extends State<ServiceComponent> {
  @override
  Widget build(BuildContext context) {

    return Wrap(
      alignment: WrapAlignment.spaceAround,
      children: [
        ListServices(
          icon: Icons.credit_card_outlined,
          title: "Card",
        ),
        ListServices(
          icon: Icons.monetization_on,
          title: "Finance",
        ),
        ListServices(
          icon: Icons.auto_graph,
          title: "Topup",
        ),
        ListServices(
          icon: Icons.help,
          title: "Help",
        )
      ],
    );
  }
}