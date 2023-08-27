import 'package:flutter/material.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/widgets/rounded_img.dart';

class UserComponent extends StatefulWidget {
  const UserComponent({
    Key? key})
      : super(key: key);

  @override
  State<UserComponent> createState() => _UserComponentState();
}

class _UserComponentState extends State<UserComponent> {
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        RichText(text:
        TextSpan(
          text: 'Hello\n',
          style: TextStyle(
              fontSize: 15,
              color: Colors.black
          ),
          children: const <TextSpan>[
            TextSpan(text: 'Aurellia!', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            )),
          ],
        )),
        Spacer(),
        RoundedImg(image: "assets/images/aurelia.jpg",)
      ],
    );
  }
}